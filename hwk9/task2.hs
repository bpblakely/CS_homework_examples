module Main where
    myCount :: Eq a => a -> [a] -> Int
    myCount p l = length (filter (==p) l)
    main = do
        print(myCount 'a' ['b','a','a','b','a'])
        print(myCount 3 [3,1,2,2,3])