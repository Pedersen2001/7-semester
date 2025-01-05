-- 1. Unary numerals consist of a finite sequence of I’s followed by a Z. The natural number n
--    can be represented as n successive I’s and a Z, so e.g. 4 is represented in unary notation
--    as IIIIZ. The natural number 0 is represented as Z.

--    Define a recursive datatype Unary for unary numerals and use your type definition to
--    define a function unary2int of type unary2int :: Unary −> Integer that finds the natural
--    number represented by a given number. As an example, unary IIIIZ should give us 4.

data Unary = I Unary | Z

unary2int :: Unary -> Integer
unary2int (Z) = 0
unary2int (I u) = 1 + unary2int u

-- 2. Use the declaration of the type Tree on page 97 to define a function least that finds the
--    least element in a given binary tree.

--    What should the type of least be?

data Tree a = Leaf a | Node (Tree a) a (Tree a)

least :: (Ord a) => Tree a -> a
least (Leaf a) = a
least (Node l x r)
  | x > lv && lv < rv = lv
  | x > rv && rv < lv = rv
  | otherwise = x
 where
  lv = least l
  rv = least r

least' :: (Ord t) => Tree t -> t
least' (Leaf a) = a
least' (Node l x r) = minimum [least' l, x, least' r]
