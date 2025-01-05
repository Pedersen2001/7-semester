{- Problem 1:
1. Define a function rotate which places the head of a list at the end of the tail of the list. We expect
that rotate [1, 2, 3] = [2, 3, 1] and that rotate ”eat” = ”ate”. Is the function polymorphic?
If yes, is the polymorphism parametric, ad hoc or both? You must justify your answer.
2. Use recursion and the rotate function to define a function allrotates that produces all the rotations
of a list. We expect that allrotates [1, 2, 3] = [[1, 2, 3], [2, 3, 1], [3, 1, 2]].
Is the function polymorphic? If yes, is the polymorphism parametric, ad hoc or both? You must
justify your answer.
3. Give another definition of allrotates called allrotates’ that is not recursive but uses either map or
foldr as well as rotate.
-}
rotate :: [a] -> [a]
rotate [] = []
rotate (x:xs) = xs ++ [x]

allrotates :: [a] -> [[a]]
allrotates [] = []
allrotates xs = take (length xs) (iterate rotate xs)


{-
allrotates xs = take n infrot xs
  where
    n = length xs
    infrot xs = xs : infrot (rotate xs)
-}

allrotates' :: [a] -> [[a]]
allrotates' xs = take (length xs) (iterate rotate xs)


{-
allrotates' xs = reverse (foldr (\x (h:t) -> (rotate h) : (h:t)) [xs] [1..(length xs - 1)])
-}


{- Problem 2:
1. Define a datatype Tree a that describes partially labelled a-trees. Show how one represents the
trees t1 and t2 in Figure 1 using your datatype.
2. Define a function isfull with type isfull :: Tree a −> Bool such that isfull t evaluates to True if t
is fully labelled and isfull t evaluates to False otherwise. isfull t1 should return False, and isfull t2
should return True.
3. Define a function preorder of type preorder :: Tree a −> Maybe [a] which lists the nodes of a fully
labelled tree in preorder but returns Nothing if the tree is not fully labelled. preorder t1 should
return Nothing, and preorder t2 should return Just [”bingo”,”plip”,”plop”,”uhu”,”fedtmule”].
You definition must satisfy the following requirements:
• The definition does not use the isfull function that you have just defined or any other helper
function.
• The definition uses the Maybe monad and do-notation.
-}

data Tree a = Leaf a | UNode (Tree a) (Tree a) | LNode a (Tree a) (Tree a) 

t1 = UNode (UNode (Leaf 17) (Leaf 484000)) (Leaf 1964)

t2 = LNode "bingo" (Leaf "plip") (LNode "plop" (Leaf "uhu") (Leaf "fedtmule"))


isfull :: Tree a -> Bool
isfull (Leaf a) = True
isfull (UNode _ _) = False
isfull (LNode _ t1 t2) = isfull t1 && isfull t2


preorder :: Tree a -> Maybe [a]
preorder (Leaf a) = Just [a]
preorder (UNode _ _) = Nothing
preorder (LNode a t1 t2) = do
  l1 <- preorder t1
  l2 <- preorder t2
  return (a : l1 ++ l2)



{- Problem 3:
Define a function remove which takes two strings as its arguments and removes every letter from the
second list that occurs in the first list.
As an example, remove ”first” ”second” should give us the string ”econd”.
1. Define remove using list comprehension.
2. Define remove using recursion without using list comprehension.
-}
remove xs ys = [y | y <- ys, not (y `elem` xs)]

-- remove xs ys = [z | z <- ys, not (elem z xs)]


remove' xs [] = []
remove' xs (y:ys) | elem y xs = remove' xs ys
remove' xs (y:ys) | not (elem y xs) = y : (remove' xs ys)



{- Problem 4:
Here is the declaration of a type WrapString and a declaration that makes it an instance of Functor.
newtype WrapString a = WS (a,String) deriving Show
instance Functor WrapString where
fmap f (WS (x,s)) = WS (f x,s)
1. Extend the above piece of code with an instance declaration such that WrapString becomes an
applicative functor also.
2. Extend the above piece of code with an instance declaration such that WrapString becomes a monad
also.
3. Use a do-block in the WS-monad that you now have to define a function pairup such that we have
that pairup (WS (4,”horse”)) (WS (5,”plonk”)) gives us WS ((4,5),”horse”).
-}

newtype WrapString a = WS (a,String) deriving Show

instance Functor WrapString where
  fmap f (WS (x,s)) = WS (f x,s)

instance Applicative WrapString where
  pure x = WS (x, "")
  (WS (f, sf)) <*> (WS (x, sx)) = WS (f x, sf ++ sx)

instance Monad WrapString where
  return = pure
  WS (x,sx) >>= f = f x

pairup x y = do
  xx <- x
  yy <- y
  return ((xx, yy))

{- Problem 5:
Here are four types. For each of the four cases, find an expression or function definition in Haskell that
has this particular type and explain if this case involves polymorphism and, if it does, whether it is
parametric polymorphism, ad hoc polymorphism or both.
1. (Ord a, Num a) => a −> a −> a −> (a, a)
2. [(Integer, p −> Char)]
3. (t1 −> Bool −> t2) −> t1 −> t2
4. (Num a, Enum a) => [a]
-}

f1 x y z = if x < y && y < z then (x+y, y+z) else (x+y, y+z)

list = [(1, \x -> 'a')]

f3 f x = f x True 

-- [1..10]



{- Problem 6:
1. Give a recursive definition of the list naturals of natural numbers. One is the least natural number.
2. Use map to define an infinite list facs such that the i + 1th element in facs is i!, the factorial of i.
Thus, we expect that take 10 facs is
[1,1,2,6,24,120,720,5040,40320,362880]
3. Give a recursive definition of the infinite list of factorials, called facs’, that does not use a definition
of the factorial function but uses the zipWith function from the Haskell prelude. The zipWith
function is defined as
zipWith f xs [ ] = [ ]
zipWith f [ ] ys = [ ]
zipWith f (x:xs) (y:ys) = (f x y) : zipWith f xs ys
-}

naturals = 1 : map (+1) naturals


facs = 1 : zipWith (*) facs naturals

facs' = 1 : zipWith (*) facs' naturals


