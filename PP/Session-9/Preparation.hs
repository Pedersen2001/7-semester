--Write a Haskell program that asks for the name of the user and greets the user with a ”Hello”. We
--would like to see the following behaviour:
-- ∗Main> Hello
--What i s your name?
--Graham
--Hello Graham
-- ∗Main>

hello = do putStr "What is your name? \n"
           name <- getLine
           putStrLn ("Hello, " ++ name ++ "!")