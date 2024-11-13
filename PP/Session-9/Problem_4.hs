-- Define an action hugorm :: IO() that reads a given number of integers from the keyboard, one
-- per line, and then finally displays the sum of the integers1. As an example, we would expect the
-- following:
-- ∗Main> hugorm
-- How many numbers would you like to add? 5
-- 1
-- 2
-- 3
-- 4
-- 5
-- The sum is 15∗Main>
-- You will need the functions read :: Read a =>String −> a and show :: Show a =>a −> String
-- to get numbers from strings and to display numbers as strings, respectively. All types in the type
-- class Num are also types in the type classes Read and Show.

hugorm :: IO()
hugorm = do 
    putStr "How many numbers would you like to add? \n"
    w <- getLine
    loop ( (read w) :: Int) 0
    where
        loop 0 total = putStrLn ("The sum is " ++ show total)  -- Print final sum
        loop x total = do
            num <- getLine
            loop (x - 1) (total + (read num :: Int))  -- Update the sum and decrement count
            