--The function isolate takes a list l and an element x and returns a pair of two new lists (l1 , l2).
--The first list l1 is a list that contains all elements in l that are not equal to x. The second list l2
--is a list that contains all occurrences of x in l.
-- • isolate [4,5,4,6,7,4] 4 evaluates to ([5,6,7],[4,4,4]) .
-- • isolate [’ g ’,’ a ’,’ k ’,’ a ’] ’a’ evaluates to ([’ g ’,’ k ’], [’ a ’,’ a ’]).
--Define isolate in Haskell without using fst, snd, head or tail . What should the type of isolate
--be? Major hint: Place the recursive call in a let- or where-clause and use pattern matching to
--find the components in the result of that call.

isolate :: Eq a => [a] -> a -> ([a], [a])
isolate [] _ = ([], [])
isolate (l:ls) x | l == x = (l1, l : l2)
                 | otherwise = (l: l1, l2)
                 where (l1, l2) = isolate ls x