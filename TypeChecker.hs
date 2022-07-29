module TypeChecker where
    
import Data.List
import Lexer
import Parser

type Ctx = [(String, Ty)]


typeof :: Ctx -> Expr -> Maybe Ty
typeof ctx MyTrue = Just TBool          -- T-False
typeof ctx MyFalse = Just TBool         -- T-True
typeof ctx (Num _) = Just TNum          -- T-Num (adaptado)
typeof ctx (Paren e) = typeof ctx e     -- T-Paren (adaptado)
typeof ctx (Add e1 e2) = case (typeof ctx e1, typeof ctx e2) of       -- T-Add  (Se e1 for TNum e e2 for TNum -> Add e1 e2 = TNum)
                            (Just TNum, Just TNum) -> Just TNum
                            _                      -> Nothing
typeof ctx (And e1 e2) = case (typeof ctx e1, typeof ctx e2) of       -- T-And  (Se e1 for TBool e e2 for TBool -> Add e1 e2 = TBool)
                            (Just TBool, Just TBool) -> Just TBool
                            _                      -> Nothing
typeof ctx (If e1 e2 e3) = case (typeof ctx e1, typeof ctx e2, typeof ctx e3) of       -- T-If (Se e1 for TBool e e2 e e3 são do mesmo tipo -> if e1 e2 e3 = type(e2))
                            (Just TBool, Just t2, Just t3) -> if t2 == t3 then 
                                                                Just t2
                                                              else 
                                                                Nothing
                            _                      -> Nothing



-- Lambda Calculus related
typeof ctx (Var v) = lookup v ctx                                       -- T-Var       
typeof ctx (Lam v t1 b) = let Just t2 = typeof ((v,t1):ctx) b           -- T-Abs
                            in Just (TFun t1 t2)        
typeof ctx (App e1 e2) = case (typeof ctx e1, typeof ctx e2) of         -- T-App
                            (Just (TFun t11 t12), Just t2) -> if (t11 == t2) then 
                                                                  Just t12
                                                              else 
                                                                  Nothing
                            _ -> Nothing 

    


typecheck :: Expr -> Expr 
typecheck e = case (typeof [] e) of
                Just _ -> e
                _      -> error "Type error: erro na verificação de tipos"