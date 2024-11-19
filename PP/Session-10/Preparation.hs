-- Exercise 1 from prep:
-- Define Onion as an instance of Functor

data Onion a = Core a | Layer (Onion a)

instance Functor Onion where
    -- fmap :: (a -> b) -> Onion a -> Onion b
  fmap f (Core x) = Core (f x)
  fmap f (Layer y) = Layer (fmap f y)


-- Exercise 2 from prep:
-- Check that the first two applicative laws at the top of page 163 hold for the Maybe type. 

prove = case1 4 && case2 (*3) 4
    where
        case1 x = (pure id <*> Just x) == Just x
        case2 f x = (pure (f a)) == (pure f <*> (Just a))