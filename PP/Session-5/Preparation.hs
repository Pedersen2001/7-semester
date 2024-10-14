-- Define the function replicate using recursion – and use pattern matching in your solution. This
-- function takes an integer n and and an element x and gives us a list with n elements where x has
-- been repeated exactly n times. As an example, replicate 3 5 should give us [5,5,5] . What should
-- the type of replicate be?


replicateRecurssion :: Int -> a -> [a]
replicateRecurssion 0 _ = []
replicateRecurssion n x = x : replicateRecurssion (n - 1) x

--Define the function improve using recursion – and use pattern matching in your solution. It takes
--a list xs and, if xs contains at least two elements, it gives us a list where every other element has
--been removed.

improve :: [a] -> [a]
improve [] = []
improve [x] = [x]
improve (x:_:xs) = x : improve xs
