module Main where
    data Tree a = Subtrees a [Tree a] | Leaf a deriving (Show)
    lessThan10 (Leaf x) = if x < 10 then 1 else 0
    lessThan10 (Subtrees x c) = if x <10 then 1 + sum(map lessThan10 c) else sum(map lessThan10 c)
    main = print(lessThan10 (Subtrees 4 [Subtrees 80 [Leaf 30,Leaf 1], Subtrees 10 [Leaf 2, Subtrees 5 [Leaf 3, Leaf 12]]]))
