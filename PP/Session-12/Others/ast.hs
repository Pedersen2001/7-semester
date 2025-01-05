import Parsing

data Bexp = FF | TT | NOT Bexp | AND Bexp Bexp | OR Bexp Bexp deriving Show

bool = b
    where
        b = (t >>= band) <|> (t >>= bor) <|> t
            where
                band x1 = symbol "and" >> AND x1 <$> b
                bor x1 = symbol "or" >> OR x1 <$> b
            
        t = bnot <|> a
            where 
                bnot = symbol "not" >> NOT <$> a

        a = tt <|> ff <|> paren 
            where
                tt = symbol "tt" >> return TT
                ff = symbol "ff" >> return FF 
                paren = char '(' >> b >>= \x -> char ')' >> return x







