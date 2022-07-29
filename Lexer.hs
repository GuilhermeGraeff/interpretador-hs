module Lexer where 

import Data.Char 

data Ty = TBool
        | TNum
        | TFun Ty Ty
        deriving (Show, Eq)

-- Lista de tokens válidos
data Token = TkTrue
          | TkFalse
          | TkNum Int
          | TkTyBool
          | TkTyNum
          | TkVar String
          | TkApply
          | TkInferTy
          | TkAdd
          | TkAnd 
          | TkLParen
          | TkRParen
          | TkIf
          | TkThen
          | TkElse
          deriving Show


lexer :: String -> [Token]
lexer [] = [] 
lexer ('+':cs) = TkAdd : lexer cs
lexer ('^':cs) = TkAnd : lexer cs
lexer ('(':cs) = TkLParen : lexer cs
lexer (')':cs) = TkRParen : lexer cs
lexer ('>':cs) = TkApply : lexer cs
lexer (':':cs) = TkInferTy : lexer cs
lexer (c:cs)
    | isSpace c = lexer cs 
    | isDigit c = lexNum (c:cs)
    | isAlpha c = lexKW (c:cs)
lexer _ = error "Lexical error: caracter inválido!"

lexNum cs = case span isDigit cs of 
                 (num, rest) -> TkNum (read num) : lexer rest

lexKW cs = case span isAlpha cs of 
                 ("if", rest)     -> TkIf : lexer rest
                 ("else", rest)   -> TkElse : lexer rest
                 ("then", rest)   -> TkThen : lexer rest
                 ("true", rest)   -> TkTrue : lexer rest
                 ("false", rest)  -> TkFalse : lexer rest
                 ("Bool", rest)   -> TkTyBool : lexer rest
                 ("Num", rest)    -> TkTyNum : lexer rest
                 ( v , rest)      -> TkVar v : lexer rest