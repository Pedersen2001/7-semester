-- A long time ago we saw the function
-- fib 1 = 1
-- fib 2 = 1
-- fib n = fib (n−1) + fib (n−2)
-- and discovered that computing fib 50 was not easy. Why was that?
-- Now define a function fibsfrom such that fibsfrom n1 n2 computes the infinite list of Fibonacci
-- numbers starting with n1 and n2. Then try to compute fib 50. What happens – and why?

-- The function fib 50 is not easy to compute because the function is recursive and the same values are computed multiple times. 
-- This is because the function fib is defined in terms of itself, and the same values are computed multiple times. 
-- This results in an exponential time complexity, which makes the computation of fib 50 very slow.

fibsfrom :: Int -> Int -> [Int]
fibsfrom n1 n2 = n1 : n2 : zipWith (+) (fibsfrom n1 n2) (tail (fibsfrom n1 n2))

{-
n1 and n2 are the base values (the first two elements of the list).

fibsfrom n1 n2 is the entire list being generated.
tail (fibsfrom n1 n2) skips the first element of the list.
zipWith (+) takes two lists and adds corresponding elements together.

For any integers n1 and n2, fibsfrom n1 n2 generates a sequence where:
- The first two numbers are n1 and n2.
- Each subsequent number is the sum of the previous two.

fibsfrom 0 1 generates the Fibonacci sequence starting with 0 and 1.
[0, 1, 1, 2, 3, 5, 8, ...]


-}

fibsfrom' :: Num a => a -> a -> [a]
fibsfrom' n m = n : fibsfrom' m (n+m)


fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib n = fib (n-2) + fib (n-1)
