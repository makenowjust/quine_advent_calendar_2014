module Language.False.Command (
  Var, Command(..)
) where

import Data.Int (Int32)

-- | A variable type
type Var = String

-- | Kinds of FALSE commands
data Command
  = Add              -- | @+@
  | Sub              -- | @-@
  | Mul              -- | @*@
  | Div              -- | @/@
  | Minus            -- | @_@
  | Equal            -- | @=@
  | Greater          -- | @>@
  | And              -- | @&@
  | Or               -- | @|@
  | Not              -- | @~@
  | Const Int32      -- | @123@
  | Name Var         -- | @var@ (a..z characters sequence, lower case only)
  | Load             -- | @;@
  | Store            -- | @:@
  | Lambda [Command] -- | @[...]@
  | Apply            -- | @!@
  | If               -- | @?@
  | While            -- | @#@
  | Dup              -- | @$@
  | Drop             -- | @%@
  | Swap             -- | @\\@
  | Rot              -- | @\@@
  | Pick             -- | @ø@ or @O@
  | Print String     -- | @"..."@
  | PutInt           -- | @.@
  | PutChar          -- | @,@
  | Read             -- | @^@
  | Flush            -- | @β@ or @E@
  deriving (Show, Eq)
