-- This is clumsy, and not quite right. Why?

dbs xs | length xs == 0 = []
       | otherwise = filter ((2 * fst (head xs)) == (snd (head xs))) xs

-- No use of pattern matching
-- Will not compile - has a type error
-- Only attempts to examine the first element of xs