-- Problem 1:
-- Give two different definitions (one using recursion, one not using recursion) of a function nsonly that takes
-- as input a number n and gives us the infinite list consisting of 0n, 1n, 2n, 3n, . . .

-- Using recursion
nsonly :: Int -> [Int]
nsonly n = n : nsonly (n + 1)

-- Not using recursion
nsonly' :: Int -> [Int]
nsonly' n = map (* n) [0..]


-- Problem 2:
-- Here is a definition of an expression.
-- plip = fst (17,f 484000)
-- where f x = f x + 1
-- What is the value of plip? Explain!

-- The value is 17, die to lazy evaluation. The expression f 484000 will never be evaluated, because the first element of the tuple is 17.
-- The second element of the tuple is a function that will never be evaluated, because the first element of the tuple is 17.
