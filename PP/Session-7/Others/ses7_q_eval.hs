-- 1.
-- Define a Haskell datatype Aexp for arithmetic expressions with addition, multiplication, numerals
-- and variables. The formation rules are
-- E ::= n | x | E1 + E2 | E1 · E2
-- Assume that variables x are strings and that numerals n are integersdata Aexp

data Aexp
  = N Int
  | X String
  | Plus Aexp Aexp
  | Mult Aexp Aexp

-- 2.
-- Use your Haskell datatype from the previous problem to define a function eval that can, when
-- given a term of type Aexp and an assignment ass of variables to numbers compute the value of the
-- expression.
-- 
-- As an example, if we have the assignment [x 7 → 3, y 7 → 4], eval should tell us that the value of
--   2 · x + y is 10.
-- Hint: An assignment is a function. How can you represent it?

-- eval :: Aexp -> Int
eval (N i) _ = i
eval (X s) ass = strToVal s ass
eval (Plus e1 e2) ass = eval e1 ass + eval e2 ass
eval (Mult e1 e2) ass = eval e1 ass * eval e2 ass

strToVal _ [] = 0
strToVal x ((a, b):ys) 
  | x == a = b
  | otherwise = strToVal x ys
