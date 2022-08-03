module Interpreter where

import Lexer 
import Parser
import TypeChecker

subst:: String -> Expr -> Expr -> Expr
subst x n b@(Var v) = if v == x then 
                            n
                        else 
                            b
subst x n (Lam v t b) = Lam v t (subst x n b)
subst x n (App e1 e2) = App (subst x n e1) (subst x n e2)
subst x n (Add e1 e2) = Add (subst x n e1) (subst x n e2)
subst x n (Sub e1 e2) = Sub (subst x n e1) (subst x n e2)
subst x n (Mul e1 e2) = Mul (subst x n e1) (subst x n e2)
subst x n (And e1 e2) = And (subst x n e1) (subst x n e2)
subst x n (Paren e1) = Paren (subst x n e1)
subst x n (Let v e1 e2) = Let v (subst x n e1) (subst x n e2)
subst x n (Pair e1 e2) = Pair (subst x n e1) (subst x n e2)
subst x n (Proj e1 i) = Proj (subst x n e1) i
subst x n (If e1 e2 e3) = If (subst x n e1) (subst x n e2) (subst x n e3)


subst x n e = e


is_value :: Expr -> Bool
is_value MyTrue = True
is_value MyFalse = True
is_value (Num _ ) = True
is_value (Pair _ _ ) = True
is_value (Lam _ _ _ ) = True
is_value _          = False



------------
step :: Expr -> Expr
step (App e1@(Lam x _ b) e2) | is_value e2 = subst x e2 b
                             | otherwise   = (App e1 (step e2))
step (App e1 e2) = App (step e1) e2

step (Paren e) = e

step (Add (Num n1) (Num n2)) = Num (n1+n2)
step (Add (Num n1) e2) = Add (Num n1) (step e2)
step (Add e1 e2) = Add (step e1) e2

step (Sub (Num n1) (Num n2)) = Num (n1-n2)
step (Sub (Num n1) e2) = Sub (Num n1) (step e2)
step (Sub e1 e2) = Sub (step e1) e2

step (Mul (Num n1) (Num n2)) = Num (n1*n2)
step (Mul (Num n1) e2) = Mul (Num n1) (step e2)
step (Mul e1 e2) = Mul (step e1) e2

step (And MyFalse _) = MyFalse
step (And MyTrue MyFalse) = MyFalse
step (And MyTrue MyTrue) = MyTrue
step (And MyTrue e2) = And MyTrue (step e2)
step (And e1 e2) = And (step e1) e2

step (If MyTrue e2 _) = step e2
step (If MyFalse _ e3 ) = step e3 
step (If e1 e2 e3 ) = If (step e1) e2 e3

step (Let x e1 e2) | is_value e1 = subst x e1 e2
                   | otherwise   = (Let x ( step e1 ) e2)

step (Pair e1 e2)  | ((is_value e1) && (is_value e2)) = Pair e1 e2
                   | is_value e1 = Pair e1 (step e2)
                   | otherwise = Pair (step e1) e2

step (Proj (Pair e1 e2) n) | n == 1      = e1
                           | n == 2      = e2
                           | otherwise   = error "Semantic error: projeção inválida"

step e = e 

eval :: Expr -> Expr 
eval e | is_value e = e 
        | otherwise = eval (step e)
