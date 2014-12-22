{-# LANGUAGE GeneralizedNewtypeDeriving #-}
module Language.False.Parser (
  parser
  ) where

import Control.Applicative ((<$>), (<*), (*>), (<$), (<|>), many, empty, Applicative, Alternative)
import Control.Lens ((.~))
import Data.Char (isSpace, ord)
import Data.Int (Int32)
import Text.Parser.Token.Style
import Text.Trifecta

import Language.False.Command

newtype FalseParser a = FalseParser { unFalseParser :: Parser a }
  deriving (Functor, Monad, Applicative, Alternative, Parsing, CharParsing)

instance TokenParsing FalseParser where
  someSpace = buildSomeSpaceParser (skipSome (satisfy isSpace)) $
    commentStart .~ "{" $ commentEnd .~ "}" $ emptyCommentStyle

parseSimpleCommand :: FalseParser Command
parseSimpleCommand = foldl f empty
  [('+', Add),
   ('-', Sub),
   ('*', Mul),
   ('/', Div),
   ('_', Minus),
   ('=', Equal),
   ('>', Greater),
   ('&', And),
   ('|', Or),
   ('~', Not),
   (';', Load),
   (':', Store),
   ('!', Apply),
   ('?', If),
   ('#', While),
   ('$', Dup),
   ('%', Drop),
   ('\\', Swap),
   ('@', Rot),
   ('ø', Pick), ('O', Pick),
   ('.', PutInt),
   (',', PutChar),
   ('^', Read),
   ('β', Flush), ('B', Flush)]
  where
    f p (ch, cmd) = p <|> (cmd <$ symbolic ch)

falseIdents :: IdentifierStyle FalseParser
falseIdents = styleStart  .~ lower $
              styleLetter .~ lower $ emptyIdents

parseVar :: FalseParser Var
parseVar = token $ ident falseIdents

parseNumber :: FalseParser Int32
parseNumber = fromIntegral <$> natural

parseChar :: FalseParser Int32
parseChar = fromIntegral . ord <$> token (char '\'' *> anyChar)

parseLambda :: FalseParser [Command]
parseLambda = symbolic '[' *> parseCommands <* symbolic ']'

parsePrint :: FalseParser String
parsePrint = token $ char '"' *> many (noneOf "\"") <* char '"'

parseCommand :: FalseParser Command
parseCommand
  = parseSimpleCommand       <|>
    (Name   <$> parseVar)    <|>
    (Const  <$> parseNumber) <|>
    (Const  <$> parseChar)   <|>
    (Lambda <$> parseLambda) <|>
    (Print  <$> parsePrint)

parseCommands :: FalseParser [Command]
parseCommands = many parseCommand

parser :: Parser [Command]
parser = unFalseParser $ whiteSpace *> parseCommands <* eof
