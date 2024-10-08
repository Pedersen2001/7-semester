-- A Pythagorean triple is a triple (a, b, c) of natural numbers a, b, and c, such that a ≤ b < c and a^2 + b^2 = c^2. 
-- In other words, a triple of this form gives us the length of the three sides of a right
-- triangle for which all sides have integer length. The smallest Pythagorean triple is (3, 4, 5).
-- Use list comprehension to define a function pyt that, when given an integer k, gives us a list of all
-- Pythagorean triples whose largest element is at most k.


-- pyt :: Int -> [(Int, Int, Int)] - WRONG - The function should be able to handle any number, not just Int
pyt :: (Ord a, Num a, Enum a) => a -> [(a, a, a)] 
pyt k = [(a, b, c) | a <- [1..k], b <- [1..k], c <- [1..k], a<=b && b<c && c<=k, a^2 + b^2 == c^2]
-- Ord due to the less than or equal operator (<=)
-- Num due to the power operator (^)
-- Enum due to the list comprehension ([1..k])


pyt1 k = [(a, b, c) | c <- [1..k], b <- [1..c-1], a <- [1..b], c^2 == a^2 + b^2]