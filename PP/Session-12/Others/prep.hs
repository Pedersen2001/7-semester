import Parsing

data Onion a = Layer (Onion a) | Core a deriving (Show)

instance Functor Onion where
  fmap f (Layer a) = fmap f a
  fmap f (Core a) = Core (f a)

layer = char 'L' >> Layer <$> onion

core = Core <$> nat

onion = layer <|> core

------------------------------------------

ab = ab' <|> symbol "ab"
  where
    ab' = do
      a <- char 'a'
      abs <- ab
      b <- char 'b'
      return (a : abs ++ [b])
