-- Last week, we read that a famous influencer on Instagram has defined a Haskell
-- function bighead that can tell us how many elements in a list xs are greater than (>) the head of xs. 
-- As an example of the behaviour of the function instance, the result of bighead [7,4,5,8,9] will be 2.
-- Now it is your turn to be a famous influencer. How would you define the bighead function? What
-- should its type be?

bighead :: Ord a => [a] -> Int
bighead (x:xs) = length [y | y <- xs, y > x]
