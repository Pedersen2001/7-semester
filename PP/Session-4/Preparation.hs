-- Define, using pattern matching and without using the length function, a function onlytwo that tells
-- us if a list has precisely two elements – in which case it must return True – or not, in which case it
-- must return False. What is the type of onlytwo?

onlytwo :: [a] -> Bool
onlytwo [_, _] = True
onlytwo _      = False

onlytwo1 (x1:(x2:[])) = True
onlytwo1 _            = False



-- The dot product of two pairs of numbers (a, b) and (c, d) is the number a · c + b · d. Define, using
-- list comprehension, a function alldots that takes two lists of pairs of numbers and returns all the
-- possible dot products of every pair from the first list and every pair from the second list. Find two
-- good test case for testing your function definition and use them to test your code. What is the type
-- of alldots ?

alldots :: [(Int, Int)] -> [(Int, Int)] -> [Int]
alldots xs ys = [a * c + b * d | (a, b) <- xs, (c, d) <- ys]

alldots1 :: (Num a) => [(a, a)] -> [(a, a)] -> [a]
alldots1 xs ys = [a * c + b * d | (a, b) <- xs, (c, d) <- ys]

test1 = alldots [(1, 2), (3, 4)] [(5, 6), (7, 8)]
test2 = alldots [(0, 1), (1, 0)] [(1, 1), (2, 2)]

test3 = alldots1 [(1, 2), (3, 4)] [(5, 6), (7, 8)]
test4 = alldots1 [(2, 1), (1, 0)] [(1, 1), (2, 2)]