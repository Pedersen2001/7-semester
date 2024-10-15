--A list [a1, a2, . . . , an] is descending if a1 ≥ a2 ≥ . . . ≥ an.
--Write a function descending that will return True if a list is descending and False otherwise. As
--examples, descending [6,5,5,1] should return True and descending [”plip”,”pli”,”ppp”] should
--return False. What is its type?

desc :: Ord a => [a] -> Bool
desc [] = True
desc [a] = True
desc (a:b:xs) = if a >= b then desc (b:xs) else False