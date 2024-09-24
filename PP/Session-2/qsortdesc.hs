module Main where

myList1 = [2,3,17,9,69,484000]
myList2 = ["some", "bizarre", "words", "in", "a", "list"]
myList3 = [2, 5, 1, 6, 3, 4]
randonList = ["kpst", "ding", "bop", "plip"]

-- Quicksort
qsort :: (Ord a) => [a] -> [a]
qsort [] = []
qsort (x:xs) = big ++ [x] ++ small
                 where big   = qsort [a | a <- xs, a > x]
                       small = qsort [a | a <- xs, a <= x]
                       

main :: IO ()
main = do
    putStrLn "Quicksorted myList1:"
    print (qsort myList1)   
    putStrLn "Quicksorted myList2:"
    print (qsort myList2)
    putStrLn "Quicksorted myList3:"
    print (qsort myList3)
    putStrLn "Quicksorted randonList:"
    print (qsort randonList)