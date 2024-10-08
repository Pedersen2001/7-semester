-- Define a function idhead that will tell us if a list of pairs begins with a pair whose
-- first and second components are identical.

idhead :: Eq a => [(a, a)] -> Bool
idhead ((a, b):_) = a == b
idhead _          = False