module Main where

myList = [2,3,17,9,69,484000]
myList2 = ["some", "bizarre", "words", "in", "a", "list"]

--Split list in two
halfindex xs = length xs `div` 2

midtover :: [a] -> ([a], [a])
midtover xs = (take (halfindex xs) xs, reverse (take (halfindex xs + (length xs `mod` 2)) (reverse xs)))

main :: IO ()
main = do
    putStrLn "Splitting myList in two:"
    print (midtover myList)
    putStrLn "Splitting myList2 in two:"
    print (midtover myList2)