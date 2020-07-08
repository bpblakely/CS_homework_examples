module Main where
  import Data.Char (isLower)
  foo :: Integer -> Integer
  foo x = foldl (*) 1 (map(\x ->  x*x*x) [1, 3 .. x-1])
  lowCharCount :: String -> Int
  lowCharCount s = length (filter (==True) (map isLower s))
  longStrCount :: [String] -> Int
  longStrCount strings = length (filter (>4) (map (\x -> length x) strings))
  main = do
    print(foo(10))
    print(lowCharCount("abDfGi"))
    print(longStrCount ["abcd","def", "fghtestwsd","now count is 2"])
