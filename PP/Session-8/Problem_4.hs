--The goal of this problem is to define a function frequencies that, given a string s,
--creates a list of pairs [( x1,f1) ,....( xk,fk)] such that if the character xi occurs a total number of
--fi times throughout the list s, then the list of pairs will contain the pair (xi, fi ).
--As an example of this,
--frequencies ”regninger ”
--should return the list
--[(’r’ ,2) ,(’e’ ,2) ,(’g’ ,2) ,(’n’ ,2) ,(’i’ , 1)]
--a) What should the type of the function be?
--b) Use recursion to give a definition of frequencies.

frequencies :: String -> [(Char, Int)]
frequencies [] = []
frequencies (x:xs) = (x, count x (x:xs)) : frequencies (filter (/= x) xs)
  where
    count :: Char -> String -> Int
    count _ [] = 0
    count c (y:ys) | c == y = 1 + count c ys
                   | otherwise = count c ys



freq [] = []
freq (x:xs) = update x fl
    where fl = freq xs

update x [] = [(x, 1)]
update x ((y, f) : ys) | x==y = (y, f + 1) : ys
update x ((y, f) : ys) | x/=y = (y,f) : (update x ys)