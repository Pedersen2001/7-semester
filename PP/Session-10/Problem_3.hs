-- For the applicative functor for lists we have a definion of the ”funny star” composition
-- <∗> on page 160. Give an alternative recursive definition of it that uses fmap.

class Functor f => Applicative f where
pure :: a -> f a
(<*>) :: f (a -> b) -> f a -> f b

-- The funny star composition
-- (<∗>) :: [a -> b] -> [a] -> [b]
[] <∗> _ = []
(f : fs) <∗> xs = (fmap f xs) ++ (fs <∗> xs)

