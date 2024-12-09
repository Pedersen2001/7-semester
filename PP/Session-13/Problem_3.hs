-- In Haskell, the value undefined is polymorphic – it has type a for every type a. One can put it
-- anywhere in an otherwise well-typed expression and the result is well-typed. But if one tries to
-- evaluate the expression, the Haskell interpreter throws the exception ”undefined”.
-- Here is a function called indflet.
-- indflet _ [ ] = [ ]
-- indflet _ [x] = [x]
-- indflet e (x:y:ys) = x : e : indflet e (y:ys)
-- First try to figure out without asking the Haskell interpreter what the type of indflet is and what
-- the function does. Next try to figure out without asking the Haskell interpreter why an exception
-- is throwh when you evaluate
-- head (indflet 1 (2:undefined))

indflet _ [ ] = [ ]
indflet _ [x] = [x]
indflet e (x:y:ys) = x : e : indflet e (y:ys)

{-
The function indflet has the following type signature:
indflet :: a -> [a] -> [a]

The function indflet takes two lists as input and returns a list. The function is defined as follows:
- If the first list is empty, the function returns an empty list.
- If the first list has one element, the function returns the first list.
- If the first list has two or more elements, the function takes the first element of the first list, 
    followed by the second list, 
    followed by the result of recursively applying the function to the second element of the first list and the rest of the first list.
-}