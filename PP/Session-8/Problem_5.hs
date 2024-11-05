--The type Encyclopedia is given by the definition
--data Encyclopedia a = Entry Stringa [Encyclopedia a ]
--Figure 1 shows two encyclopedias.
--Figure 1: Two encyclopedias t1 (left) and t2 (right)
--An encyclopedia is layered if it holds that all values at the same level of the encyclopedia are larger
--than the values in the levels above. As an example, t2 in Figure 1 is layered, since 8 and 9 at level
--3 are greater than the values 3, 4 and 5 at level 2 – which are greater than the value 1 at level 1.
--Define a function layered that can tell us if an encyclopedia is layered. Hint: The higher-order
--functions all and map are useful.

data Encyclopedia a = Entry String a [Encyclopedia a]
