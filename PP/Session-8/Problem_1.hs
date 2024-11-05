-- Find Haskell expressions that have the types
-- 1. (Ord a, Num a)=>a −> a −> [[Bool]] −> Bool
-- 2. Num a =>(t −> a, t)−> a −> a
-- 3. Fractional t1 =>(t2 −> t1)−> (t2 −> t1)−> (t1 −> t3)−> t2 −> t3

f1 :: (Ord a, Num a) => a -> a -> [[Bool]] -> Bool
f1 x y z = (z !! x) !! y


f2 :: Num a => (t -> a, t) -> a -> a
f2 (f, x) y = f x + y

f3 :: Fractional t1 => (t2 -> t1) -> (t2 -> t1) -> (t1 -> t3) -> t2 -> t3
f3 f g h x = h ((f x + g x) / 2)