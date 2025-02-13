{-
Below are five types. For each of them, define a Haskell value (which may be a function) that has
this particular type as their most general type.
a) Ord a =>(a, a) −> String −> Integer
b) Bool −> p −> p
c) (Ord a1, Eq a2)=>a2 −> a2 −> (a1, a1)−> a1
d) Show a1 =>[a2] −> a1 −> IO ()
e) ((a1, a1), b) −> [a2] −> ((a1, b)−> [a3]) −> [a3]
Moreover, for each of these four types also indicate if the type involves
• parametric polymorphism only
• overloading (ad hoc-polymorphism) only
• both forms of polymorphism
• no polymorphism
-}
f1 (x, y) s = if x > y then 'a' else 'b'

f2 True x  = x 

f3 x y (a,b) = if x == y then a else max a b