import Parsing

tt = symbol "tt" >> return True
ff = symbol "ff" >> return False

band x1 = symbol "and" >> (&& x1) <$> b

bor x1 = symbol "or" >> (|| x1) <$> b

bnot = symbol "not" >> not <$> b

b = (t >>= band) <|> (t >>= bor) <|> t
    
t = bnot <|> a

a = tt <|> ff <|> do 
    char '('
    space
    x <- b
    space
    char ')'
    return x

bool = b







