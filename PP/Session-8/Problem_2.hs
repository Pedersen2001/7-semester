-- A former minister of science and education is now trying to get a university degree and is busy
-- learning Haskell. The minister is trying to construct a function triples that takes a list of tuples
-- (each tuple has exactly 3 elements) and converts that list of tuples into a tuple of lists.
-- triples [(1,2,3) , (4, 5, 6), (7, 8, 9)] should produce ( [1,4,7], [2, 5, 8], [3, 6, 9] ).
-- The minister wrote the following piece of code and a type specification but ran into problems.
-- triples : : Num a => [ ( a , a , a ) ] −> ( [ a ] , [ a ] , [ a ] )
-- triples [ ] = ( )
-- triples [ ( a , b , c ) ]= ( [ a ] , [ b ] , [ c ] )
-- triples ( x : xs , y : ys , z : z s ) = [ x , y , z ] : T r i p l e s [ ( xs , ys , z s ) ]
-- Fix the issues that the triples function has. Write a recursive definition of triples that actually
-- works. 

triples :: [(a, a, a)] -> ([a], [a], [a])
triples [] = ([], [], [])  -- Base case: return three empty lists for an empty input
triples ((a, b, c):xs) = (a : as, b : bs, c : cs)  -- Deconstruct the tuple and recurse
  where (as, bs, cs) = triples xs  -- Recursively process the rest of the list
