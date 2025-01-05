data Encyclopedia a = Node a [Encyclopedia a] deriving Show

t1 = Node ("mango", True) 
        [ Node ("dingo", False) 
            [ Node ("plip", True) []
            , Node ("ninka", False) []
            ]
        , Node ("plop", True) []
        , Node ("plys", False) 
            [ Node ("boing", True) []]
        ]

t2 = Node ("plonk", 1) 
        [ Node ("zap", 3) 
            [ Node ("ninka", 8) []]
        , Node ("uhu", 3) 
            [ Node ("gif", 8) []]
        , Node ("bingo", 5) []
        ]


