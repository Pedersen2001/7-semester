data Tree a = Leaf a | Node (Tree a)  (Tree a)

-- First try
minmax :: Ord a => Tree a -> (a, a)
minmax (Node t1 t2) = (min mint1 mint2, max maxt1 maxt2)
    where 
        (mint1, maxt1) = minmax t1
        (mint2, maxt2) = minmax t2

minmax (Leaf a) = (a, a)


--- Solution for any tree
minorder (Node t1 t2) = do
    x <- minorder t1
    y <- minorder t2
    if x <= y then return x else Nothing
minorder (Leaf a) = Just a

success = Node (Node (Leaf 1) (Leaf 2)) (Node (Leaf 3) (Leaf 4))
failure = Node (Node (Leaf 3) (Leaf 4)) (Node (Leaf 2) (Leaf 1))


--- Orderd tree
minmax' :: Ord a => Tree a -> (a, a)
minmax' (Node t1 t2) = (minmaxmin t1, minmaxmax t2)
    where
        minmaxmin (Node t1 _) = minmaxmin t1
        minmaxmin (Leaf a) = a
        minmaxmax (Node _ t2) = minmaxmax t2
        minmaxmax (Leaf a) = a

minorder' t = let (mi, mx) = minmax' t in if mi <= mx then Just mi else Nothing





