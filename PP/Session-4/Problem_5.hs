-- A perfect number n is a natural number that is the sum of its own divisors excluding n itself. 28
-- is a perfect number, since 1 + 2 + 4 + 7 + 14 = 28. Use list comprehension to define a function
-- isperfect that will tell us if any given natural number is a perfect number.

isperfect :: Int -> Bool
isperfect n = n == sum [x | x <- [1..n-1], n `mod` x == 0]