module Language.False.Run (
  StackData(..), Stack, ErrorMessage,
  run
  ) where

import Control.Arrow (first, second)
import Control.Applicative ((*>))
import Control.Monad.Except
import Control.Monad.State.Strict
import Data.Char (ord, chr)
import Data.Function (fix)
import Data.Int (Int32)
import qualified Data.HashMap.Strict as HM
import System.IO (hFlush, stdout, stdin)

import Language.False.Command

-- A data having stack
data StackData
  = VarData Var
  | IntData Int32
  | LamData [Command]
  | BoolData Bool
  deriving (Show, Eq)

-- | A stack
type Stack = [StackData]

type ErrorMessage = String

stackUnderflow, invalidIndex :: ErrorMessage
stackUnderflow = "runtime error: stack underflow"
invalidIndex = "runtime error: invalid index"

expectType :: String -> String -> ErrorMessage
expectType e r = concat ["runtime error: expect `", e, "', but found `", r, "'"]

notFound :: Var -> ErrorMessage
notFound v = concat ["runtime error: ", v, " is not found"]

-- | False monad
type False = ExceptT ErrorMessage (StateT (Stack, HM.HashMap Var StackData) IO)

pop :: False StackData
pop = do
  (st, e) <- get
  if null st
    then throwError stackUnderflow
    else do
      put $ (tail st, e)
      return $ head st

push :: StackData -> False ()
push s = modify $ first (s :)

peek :: False StackData
peek = do
  d <- pop
  push d
  return d

getEnv :: False (HM.HashMap Var StackData)
getEnv = fmap snd get

setEnv :: Var -> StackData -> False ()
setEnv v d = modify $ second (HM.insert v d)

typeName :: StackData -> String
typeName (VarData _) = "var"
typeName (IntData _) = "int"
typeName (LamData _) = "lambda"
typeName (BoolData _) = "bool"

checkVarType :: False ()
checkVarType = do
  d <- peek
  case d of
    VarData _-> return ()
    _-> throwError $ expectType "var" $ typeName d

checkIntType :: False ()
checkIntType = do
  d <- peek
  case d of
    IntData _ -> return ()
    _-> throwError $ expectType "int" $ typeName d

checkLambdaType :: False ()
checkLambdaType = do
  d <- peek
  case d of
    LamData _ -> return ()
    _-> throwError $ expectType "lamda" $ typeName d

checkBoolType :: False ()
checkBoolType = do
  d <- peek
  case d of
    BoolData _ -> return ()
    _-> throwError $ expectType "bool" $ typeName d

popBool :: False Bool
popBool = do
  d <- pop
  case d of
    IntData n -> return $ n /= 0
    BoolData b -> return b
    _-> do
      push d
      throwError $ expectType "bool" $ typeName d

liftInt2 :: (Int32 -> Int32 -> Int32) -> False ()
liftInt2 f = do
  checkIntType; IntData a <- pop
  checkIntType; IntData b <- pop
  push $ IntData $ f b a

liftInt2B :: (Int32 -> Int32 -> Bool) -> False ()
liftInt2B f = do
  checkIntType; IntData a <- pop
  checkIntType; IntData b <- pop
  push $ BoolData $ f b a

liftInt1 :: (Int32 -> Int32) -> False ()
liftInt1 f = do
  checkIntType; IntData a <- pop
  push $ IntData $ f a

liftBool2 :: (Bool -> Bool -> Bool) -> False ()
liftBool2 f = do
  a <- popBool
  b <- popBool
  push $ BoolData $ f b a

liftBool1 :: (Bool -> Bool) -> False ()
liftBool1 f = do
  a <- popBool
  push $ BoolData $ f a

run :: [Command] -> False ()
run [] = return ()
run (Add:cs) = liftInt2 (+) *> run cs
run (Sub:cs) = liftInt2 (-) *> run cs
run (Mul:cs) = liftInt2 (*) *> run cs
run (Div:cs) = liftInt2 div *> run cs
run (Minus:cs) = liftInt1 negate *> run cs
run (Equal:cs) = liftInt2B (==) *> run cs
run (Greater:cs) = liftInt2B (>) *> run cs
run (And:cs) = liftBool2 (&&) *> run cs
run (Or:cs) = liftBool2 (||) *> run cs
run (Not:cs) = liftBool1 not *> run cs
run (Const i:cs) = push (IntData i) *> run cs
run (Name v:cs) = push (VarData v) *> run cs
run (Load:cs) = do
  checkVarType; VarData v <- pop
  e <- getEnv
  case HM.lookup v e of
    Just d  -> push d
    Nothing -> throwError $ notFound v
  run cs
run (Store:cs) = do
  checkVarType; VarData v <- pop
  d <- pop
  setEnv v d
  run cs
run (Lambda l:cs) = push (LamData l) *> run cs
run (Apply:cs) = do
  checkLambdaType; LamData cs' <- pop
  run cs'; run cs
run (If:cs) = do
  checkLambdaType; LamData cs' <- pop
  b <- popBool
  when b $ run cs'
  run cs
run (While:cs) = do
  checkLambdaType; LamData body <- pop
  checkLambdaType; LamData cond <- pop
  fix $ \loop-> do
    run cond
    b <- popBool
    when b $ run body >> loop
  run cs
run (Dup:cs) = do
  a <- pop
  push a; push a
  run cs
run (Drop:cs) = pop *> run cs
run (Swap:cs) = do
  a <- pop; b <- pop
  push a; push b
  run cs
run (Rot:cs) = do
  a <- pop; b <- pop; c <- pop
  push b; push a; push c
  run cs
run (Pick:cs) = do
  checkIntType; IntData i <- pop
  st <- fmap fst get
  when (i < 0) $ throwError invalidIndex
  let st' = drop (fromIntegral i) st
  when (null st') $ throwError invalidIndex
  push $ head st'
  run cs
run (Print msg:cs) = liftPutStr msg >> run cs
run (PutInt:cs) = do
  checkIntType; IntData i <- pop
  liftPutStr $ show i
  run cs
run (PutChar:cs) = do
  checkIntType; IntData i <- pop
  liftPutChar $ chr $ fromIntegral i
  run cs
run (Read:cs) = do
  c <- liftGetChar
  push $ IntData $ fromIntegral $ ord c
  run cs
run (Flush:cs) = do
  lift $ lift $ hFlush stdout
  run cs

liftPutStr :: String -> False ()
liftPutStr = lift . lift . putStr
liftPutChar :: Char -> False ()
liftPutChar = lift . lift . putChar
liftGetChar :: False Char
liftGetChar = lift (lift getChar)
