
data W x = Bingo x deriving Show

instance Functor W where
    fmap f (Bingo x) = Bingo (f x)

instance Applicative W where
    pure = Bingo
    Bingo f <*> Bingo x = Bingo (f x)

instance Monad W where
    return = pure
    Bingo x >>= f = f x

