module Main where
-- This is the simple program from the slides from the introduction

laengde :: (Num p) => [a] -> p
laengde [] = 0
laengde (x:l) = 1 + (laengde l)

myList = [2,3,17,9,69,484000]
myList2 = ["some", "bizarre", "words", "in", "a", "list"]

data BTree = BLeaf Int | BBranch Int BTree BTree deriving Show

sumtree :: BTree -> Int
sumtree (BLeaf x) = x
sumtree (BBranch x t1 t2) = let v1 = sumtree t1
                                v2 = sumtree t2
                            in x + v1 + v2

myBigOak = BBranch 14 (BLeaf 13) (BLeaf 17)

-- Quicksort
qsort :: (Ord a) => [a] -> [a]
qsort [] = []
qsort (x:xs) = small ++ [x] ++ big
                 where small = qsort [a | a <- xs, a <= x]
                       big   = qsort [a | a <- xs, a > x]

-- Second
second :: [a] -> Maybe a
second (_:x:_) = Just x
second _       = Nothing

main :: IO ()
main = do
    putStrLn "Length of myList:"
    print (laengde myList)
    putStrLn "Sum of myBigOak:"
    print (sumtree myBigOak)
    putStrLn "Quicksorted myList:"
    print (qsort myList)
    putStrLn "Second element of myList:"
    print (second myList)
    putStrLn "Second element of myList2:"
    print (second myList2)