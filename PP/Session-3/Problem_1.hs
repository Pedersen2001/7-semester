-- What is the type of the function:
--      twice f x = f ( f ( x ) )
-- Explain your answer and how you found it. Then (and only then) check your answer using the
-- Haskell interpreter. Is the function polymorphic? If it yes, tell us if this is parametric polymorphism
-- or overloading (ad hoc polymorphism). If it is not, tell us why.
-- What about the type of the function:
--      twicetwo ( f , x ) = f ( f ( x ) )

twice :: (a -> a) -> a -> a
twice f x = f (f (x))

twicetwo :: (a -> a, a) -> a
twicetwo (f, x) = f (f (x))