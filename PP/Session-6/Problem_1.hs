--Define a function dbs over lists using higher-order functions. The list should take a list of pairs of
--numbers and return the list of tuples in which the second element in the first tuple is two times the
--first element. As an example dbs [(1,4) ,(3,6) ,(9,2) ,(4,8) ] should return the list [(3,6),(4,8)].



dbs :: [(Int) -> (Int)] -> [(Int) -> (Int)] 
dbs = filter (\(a, b) -> (2 * a) == b)


dbs1 :: [(Int) -> (Int)] -> [(Int) -> (Int)] 
dbs1 = filter (\a -> 2 * fst a == snd a)