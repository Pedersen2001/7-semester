-- Name: Lucas Lybek Højlund Pedersen
-- AAU mail address: llhp21@student.aau.dk
-- Study number: 20214857


-- PROBLEM 1
{-
1. a −> b −> [(a, b)] −> [(a, b)]
2. Num a => a −> a −> (a, [a])
3. (Ord a, Num a) => ([Char], a −> Bool)
4. [[Char] −> [Char]]
-}

-- 1.1
f1  a b [(c, d)]= [(c,d)] 

-- 1.2
f2  x y = (x+y, [x+y])

-- 1.3
f3 [('a')] x = True

-- 1.4
f4 [[('a')]]= [[('a')]]

-- PROBLEM 2

-- 2.1
data SWComponent a = Primitive (a) | NodeA (a) (SWComponent a) (SWComponent a) | NodeB (a) (SWComponent a) (SWComponent a) (SWComponent a) | NodeC (a) (SWComponent a)

-- 2.2

t1 = NodeA ("Main", 20) (NodeB ("Bingo", 12) (Primitive ("Plip", 5)) (Primitive ("Plop", 5)) (Primitive ("Mango", 2))) (Primitive ("Dingo", 8))

t2 = NodeB ("Tralala", 40) (Primitive ("Boom", 10)) (NodeA ("Boom", 20) (Primitive ("Zoom", 4)) (Primitive ("Zoom", 12))) (NodeC ("Boom", 10) (Primitive ("Zoom", 5)))

-- 2.3

-- valid :: SWComponent a -> Bool


-- PROBLEM 3

-- 3.1
data Vote a = Yes | No | Abstain

-- 3.2
{-
success :: [Vote a] -> Bool
success [] = []
success (x:xs) | x == "Yes" = [x:y]
               | x == "No" = [x:n]
               where length [y] > length [n] = True
               success [xs]
-}
-- 3.3

-- 3.4

-- PROBLEM 4
data Err a = Result a | Wrong Float deriving Show

-- 4.1
safelog :: Float -> Err Float
safelog n = if n > 0 then Result n else Wrong n

-- 4.2
instance Functor Err where
    fmap g (Result x) = Result (g x)

-- 4.3

instance Applicative Err where
    pure = Result
    (Result g) <*> rx = fmap g rx

-- 4.4

-- PROBLEM 5

-- 5.1
odds = 1 : map(+2) odds

-- 5.2

-- 5.3
{-
The call succeeds, as the length of "paul" is larger than 3, and "ringo" is therefore appended to the end of the variable u, which is "paul". 
Therefore, the outcome of the function when writing quango ”paul” (plop 14), will be "paulringo". 
If the information within the variable u had a length smaller than 3, then v would be appended at the end of u, which is not the case in this instance.

-}

-- PROBLEM 6

-- 6.1

-- 6.2


