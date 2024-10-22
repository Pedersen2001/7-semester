-- 1. Every letter in the lowercase English alphabet has a position. ”a” has position 1, ”c” has
-- position 3 and ”h” has position 8.
-- In Haskell, every string is a list of characters. So String is the same type as [Char].
-- We can define a function positions that, given a string of lowercase letters str gives us the
-- list of positions of the characters in str.
-- As an example, positions ”abba’’ gives us [1,2,2,1] . Use the higher-order functions in
-- Chapter 7 to define positions.
-- Here it useful to remember that the ordinal value of a character can be computed using
-- the function fromEnum found in the prelude. We have that fromEnum ’a’ is 97 and that
-- fromEnum ’b’ is 98.

positions :: String -> [Int]
positions str = map (\x -> fromEnum x - 96) str


-- 2. The function sumsq takes an integer n as its argument and returns the sum of the squares
-- of the first n integers. So sumsq n returns the sum
--      1 + . . . + n^2
-- As an example, sumsq 4 gives us 30 and sumsq 9 gives us 285 . Use foldr to define sumsq
-- and do not use map.

sumsq :: Int -> Int
sumsq n = foldr (+) 0 (map (\x -> x^2) [1..n])

-- sumsq without the use of map
sumsq1 :: (Num a, Enum a) => a -> a
sumsq1 n = foldr ((+) . (^2)) 0 [1..n]