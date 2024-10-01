--What is the type of the function
--      dingo ( x , y ) = [ x , y ]
--Explain your answer and how you found it. Then (and only then) check your answer using the
--Haskell interpreter. Is the function polymorphic? If it yes, tell us if this is parametric polymorphism
--or overloading (ad hoc polymorphism). If it is not, tell us why.

dingo :: (a, a) -> [a]
dingo (x, y) = [x, y]