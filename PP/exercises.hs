{-
Use list comprehension to define a function sevens that given an integer k gives us a list of all natural
numbers that are divisible by 7 and are less than k. First find out what its type should be.
-}
sevens :: Int -> [Int]
sevens k = [x | x <- [0..k-1], x `mod` 7 == 0]

{-
Use list comprehension to define a function flop that, when given a list of pairs returns a list of pairs
whose components are reversed. The list can be empty.
For example, flop [(1,’ a’) ,(3,’ r ’) ,(9,’ e’) ] should return the list [(’ a ’,1) ,(’ r ’,3) ,(’ e ’,9) ].
What is the type of flop?
-}
flop :: [(a, b)] -> [(b, a)]
flop xs = [(b,a) | (a,b) <- xs]


{-
Write a function dupli that will duplicate the elements of any given list. As an example, dupli [1, 2,
3] must give us [1,1,2,2,3,3] . What should the type of dupli be? Hint: The concat function from
Chapter 5 will be useful for stitching everything together.
• First figure out what the type of isperfect should be.
• Now write the code. Hint: Section 5.2 of the book is useful.

Without concat:
dupli :: [a] -> [a]
dupli xs = [y | x <- xs, y <- [x, x]]
-}
dupli :: [a] -> [a]
dupli xs = concat [[x, x] | x <- xs]


{-
Here is a function sums whose definition has one single use of list comprehension.
sums m n = [ x+y | x <− [ 1 . .m] , y <− [ 1 . . n ] ]
The list comprehension in this definition uses two generators. Write an alternative definition of sums
that only uses list comprehensions (so you may need more than one instance of list comprehension)
with one generator each.
-}
sums :: Int -> Int -> [Int]
sums m n = concat [ [x + y | y <- [1..n]] | x <- [1..m] ]


{-
The function reverse appears in the Haskell prelude. It will reverse a list such that e.g. reverse
[1,2,3] evaluates to [3,2,1] .
Now it is your task to define your own version of this function, rev. First try to find out what the
type of rev should be and follow the overall approach described in Section 6.6.
-}
rev :: [a] -> [a]
rev [] = []
rev (n:ns) = rev ns ++ [n]


{-
A list [a1, a2, . . . , an] is descending if a1 ≥ a2 ≥ . . . ≥ an.
Write a function descending that will return True if a list is descending and False otherwise. As
examples, descending [6,5,5,1] should return True and descending [”plip”,”pli”,”ppp”] should
return False. What is its type?
-}
descending :: Ord a => [a] -> Bool
descending [] = True
descending [n] = True
descending (n:z:ns) = if n >= z then descending (z:ns) else False


{-
The function rle is a function that, when given a list xs produces a list of pairs of elements of xs and
integers. This list of pairs has its elements appears in the order that they appeared originally and
contains (x, n) if there are n successive occurrences of x in the list. For instance
r l e [ ’ a ’ , ’ a ’ , ’ a ’ , ’ g ’ , ’ g ’ , ’ b ’ , ’ a ’ , ’ a ’ ]
should give us the list [(’ a ’,3) ,(’ g ’,2) ,(’ b’,1) ,(’ a ’,2) ] and
r l e [ 1 , 1 , 1 , 2 , 2 , 1 , 3 , 3 ]
should give us [(1,3) ,(2,2) ,(1,1) ,(3,2) ].
Define rle in Haskell. First try to find out what the type of rle should be and follow the overall
approach described in Section 6.6.
-}
rle :: Eq a => [a] -> [(a, Int)]
rle [] = []
rle (x:xs) = let (first, rest) = span (== x) xs
             in (x, 1 + length first) : rle rest