--The function wrapup is a function that takes a list and returns a list of lists. Each
--list in this list contains the successive elements from the original list that are identical.
--For instance, wrapup [1,1,1,2,3,3,2] should give us the list [[1,1,1],[2],[3,3],[2]] and
--wrapup [True,True,False,False,False ,True] should give us the list [[ True,True ],[False ,False ,False],[ True]].
--Define wrapup in Haskell using recursion1 but without using fst, snd, head or tail . Major hint:
--Recall the definition of the isolate function from before.

wrapup :: Eq a => [a] -> [[a]]
wrapup [] = [] 
wrapup (x:xs) =
    let (group, rest) = isolate xs x  
    in (x : group) : wrapup rest  


-- Modified from Problem 3, such that it works as intended for wrapup function
isolate :: Eq a => [a] -> a -> ([a], [a])
isolate [] _ = ([], [])
isolate (l:ls) x
    | l == x    = (l : l1, l2)
    | otherwise = ([], l:ls) 
    where (l1, l2) = isolate ls x
