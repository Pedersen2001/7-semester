quango :: a -> [a]
quango x = [x, x]

tango :: Num p1 => (a, b) -> p2 -> p1
tango _ _ = 42