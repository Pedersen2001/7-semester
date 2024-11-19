-- The type of unbounded trees UTree is given by
--          data UTree a = Node a [ UTree a ]
-- Define an instance of Functor for UTree.

data UTree a = Node A [ UTree a]

instance Functor UTree where
    -- fmap :: (a -> b) -> UTree a -> UTree b
    fmap f (Node a children) = Node (f a) (map (fmap f) children)


-- Another way of doing it
data UTree1 a = Node A [ UTree1 a]

instance Functor UTree1 where
    fmap g (Node a []) = Node (g a) [] -- base case (Can be deleted/not necessary)
    fmap g (Node a xs) = Node (g a) rest    
        where   
            rest = fmap g x | x <- xs