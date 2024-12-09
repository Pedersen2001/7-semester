-- Define a function allBinaries :: [String] that wil give us the infinite ordered list of strings that
-- correspond to binary numbers, with the least significant bit first, no trailing zeros, i.e.
-- allBinaries = [ ”0” , ”1” , ”01” , ”11” , ”001 ” , . . . ] .
-- Please do not attempt to do this by trying to convert integers to binary strings. Instead, generate
-- the strings directly and find out how to leave out the invalid strings from the infinite list.

allBinaries :: [String]
allBinaries = let next x = x : next (countUp x) in next "0"
    where
        countUp ['0'] = "1"
        countUp ['1'] = "01"
        countUp ('1':bs) = '0': countUp bs
        countUp ('0':bs) = '1': bs