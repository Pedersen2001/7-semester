module Main where

myList = [2,3,17,9,69,484000]
myList2 = ["some", "bizarre", "words", "in", "a", "list"]

-- reverseTolast - reverses a list and returns the first item (before the reverse)
reverseTolast :: [a] -> ([a], a)
reverseTolast xs = (reverse xs, head xs)

-- reverseTolast - Reverses the list and returns the last item (before the reverse)
reverseTolast1 :: [a] -> ([a], a)
reverseTolast1 xs = (reverse xs, head (reverse xs))


main :: IO ()
main = do
    putStrLn "Reversing myList and returning the last element:"
    print (reverseTolast myList)
    putStrLn "Reversing myList2 and returning the last element:"
    print (reverseTolast myList2)
    putStrLn "Reversing myList and returning the last element:"
    print (reverseTolast1 myList)
    putStrLn "Reversing myList2 and returning the last element:"
    print (reverseTolast1 myList2)