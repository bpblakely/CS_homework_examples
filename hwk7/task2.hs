module Main where
                  foo :: [Int] -> [Int]
                  foo list = [x|x <- list, mod x 3 == 0]
                  main = print(foo[24,12,4,15,25,32])