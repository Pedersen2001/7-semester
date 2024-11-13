-- Use recursion to define a Haskell value letter that is a sequence of actions which does the following:
-- • Receive a string
-- • Print out the characters of the string one by one, with each character followed by a linebreak
letters :: IO String
letters = do
    x <- getLine
    loop w
    where -- loop is a helper-function, used to achieve the recursion needed for the exercises
        loop [] = return ()
        loop (x:xs) = do
            putStrLn [x]
            loop xs