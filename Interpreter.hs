module Interpreter where

import Lexer 

subst:: String -> Expr -> Expr -> Expr
subst x n b@(Var v) = if v == x then 
                            n
                        else 
                            b
subst x n (Lam v t b) = Lam v t (subst x n b)
subst x n (App e1 e2) = App (subst x n e1) (subst x n e2)
subst x n (Add e1 e2) = Add (subst x n e1) (subst x n e2)
subst x n e = e


is_value :: Expr -> Bool
is_value BTrue = True
is_value BFalse = True
is_value (Num _ ) = True
is_value (Lam _ _ _ ) = True
is_value _          = False

step :: Expr -> Expr
step (App e1@(Lam x _ b) e2) | is_value e2 = subst x e2 b
                             | otherwise   = (App e1 (step e2))
step (App e1 e2) = App (step e1) e2
step (Add (Num n1) (Num n2)) = Num (n1+n2)
step (Add (Num n1) e2) = Add (Num n1) (step e2)
step (Add e1 e2) = Add (step e1) e2
step e = e 

eval' :: Expr -> Expr 
eval' e | is_value e = e 
        | otherwise = eval' (step e)
