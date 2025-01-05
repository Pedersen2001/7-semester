
touple :: Monad m => m a -> m b -> m (a, b)
touple ma mb = ma >>= \a -> mb >>= \b -> return (a, b)

touple' :: Monad m => m a -> m b -> m (a, b)
touple' ma mb = do
    a <- ma
    b <- mb
    return (a, b)

-- touple (Just 1) (Just 2) == Just (1, 2)
-- touple (Just 1) Nothing == Nothing 
-- touple Nothing Nothing == Nothing 
-- touple Nothing (Just 2) == Nothing 

equiv z s f = z >>= \y -> s y >>= const $ return (f y)


