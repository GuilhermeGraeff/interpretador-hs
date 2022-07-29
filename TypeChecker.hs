module TypeChecker where
    
import Data.List
import Lexer

type Ctx = [(String, Ty)]


typeof :: Ctx -> Expr -> Maybe Ty
typeof ctx BTrue = Just TBool
typeof ctx BFalse = Just TBool
typeof ctx (Num _) = Just TNum
typeof ctx (Var v) = lookup v ctx                                       -- T-Var       
typeof ctx (Lam v t1 b) = let Just t2 = typeof ((v,t1):ctx) b           -- T-Abs
                            in Just (TFun t1 t2)        
typeof ctx (App e1 e2) = case (typeof ctx e1, typeof ctx e2) of         -- T-App
                            (Just (TFun t11 t12), Just t2) -> if (t11 == t2) then 
                                                                  Just t12
                                                              else 
                                                                  Nothing
                            _ -> Nothing 
typeof ctx (Add e1 e2) = case (typeof ctx e1, typeof ctx e2) of 
                            (Just TNum, Just TNum) -> Just TNum
                            _                      -> Nothing

typecheck :: Expr -> Expr 
typecheck e = case (typeof [] e) of
                Just _ -> e
                _      -> error "Type error: erro na verificação de tipos"