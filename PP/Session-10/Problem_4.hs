-- Use the fact that the list type can be seen as an applicative functor to define
-- a function prodthree that takes three lists of numbers and computes the list of all products
-- of triples of numbers in the list. As an example, prodthree [1,2,3] [4,5,6] [7,8,9] should
-- give us the list:
-- [28, 32, 36, 35, 40, 45, 42, 48, 54, 56, 64, 72, 70, 80, 90, 84, 96, 108, 84, 96, 108,
-- 105, 120, 135, 126, 144, 162]
-- Hint: Somewhere a funny star keeps shining.

prodthree :: Num a => [Int] -> [Int] -> [Int] -> [Int]
prodthree xs ys zs = pure (\x y z -> x * y * z) <*> xs <*> ys <*> zs