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

eval :: Bexp -> Bool
eval FF = False
eval TT = True
eval (NOT exp) = not $ eval exp
eval (AND exp1 exp2) = eval exp1 && eval exp2
eval (OR exp1 exp2) = eval exp1 || eval exp2

evalString str = case parse bool str of
    [] -> Nothing 
    ((x, _):_) -> Just $ eval x


