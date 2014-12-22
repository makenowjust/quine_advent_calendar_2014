module Main where

import Control.Monad.Except
import Control.Monad.State.Strict
import qualified Data.HashMap.Strict as HM
import Data.List (intercalate)
import System.Environment (getArgs)
import System.IO (hPutStrLn, stderr)
import Text.Trifecta

import Language.False.Command
import Language.False.Parser
import Language.False.Run

main :: IO ()
main = do
  (filename:_) <- getArgs
  m <- parseFromFile parser filename
  case m of
    Just cs -> do
      (m, (st, e)) <- flip runStateT ([], HM.empty) $ runExceptT $ run cs
      case m of
        Right _-> return ()
        Left err-> do
          hPutStrLn stderr err
          hPutStrLn stderr $ concat ["stack: ", showStack st]
    Nothing -> return ()

showStack :: Stack -> String
showStack = intercalate " " . map showData . reverse
  where
  showData (IntData i) = show i
  showData (VarData v) = "`" ++ v ++ "'"
  showData (LamData _) = "function"
  showData (BoolData True) = "true"
  showData (BoolData False) = "false"
