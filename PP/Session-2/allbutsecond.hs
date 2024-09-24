module Main where

myList = [2,3,17,9,69,484000]
myList2 = ["some", "bizarre", "words", "in", "a", "list"]

-- allbutsecond
allbutsecond :: [a] -> [a]
allbutsecond (x:_:xs) = x:xs


-- allbutsecondtail using tail
allbutsecondtail [] = []
allbutsecondtail (x:xs) = 
    if length (x:xs) < 2
        then [x]
        else [x] ++ tail xs


main :: IO ()
main = do
    putStrLn "All but second element from myList:"
    print (allbutsecond myList)
    putStrLn "All but second element from myList2:"
    print (allbutsecond myList2)
    putStrLn "All but second element from myList:"
    print (allbutsecondtail myList)
    putStrLn "All but second element from myList2:"
    print (allbutsecondtail myList2)