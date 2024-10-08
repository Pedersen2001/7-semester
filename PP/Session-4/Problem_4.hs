-- Show how the meaning of the following curried function definition can be given in terms of lambda
-- expressions from Haskell (there is more than one correct answer!).
-- plonk x y z = x+y+z
-- Figure out the type of plonk without asking the Haskell interpreter.

plonk :: Num a => a -> a -> a -> a
plonk = \x -> (\y -> (\z -> x + y + z))