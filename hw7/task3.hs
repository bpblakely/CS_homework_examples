module Main where
                  foo :: [Int] -> Int
                  foo list = length [x|x <- list, x <0]
                  main = print(foo[24,-12,4,-15,-25,-32,0,13])