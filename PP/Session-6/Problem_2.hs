-- The within function takes a list of numbers and a pair of numbers, returns a list of numbers which
-- are in the input list and within the range (inclusive) given by the input pair.
-- The elements in the output list appear be in the same order they appeared in the input list. If the
-- input pair is (n1,n2), assume that n1 is the lower bound of the range and n2 is the upper bound of
-- the range.

within :: Ord a => [a] -> (a, a) -> [a]
within xs (n1, n2) = filter (\x -> x >= n1 && x <= n2) xs