module Main where
                  toDigits number =
                                   if number > 0 then map(\n -> read [n] :: Int) (show number)
                                   else []
                  main = print(toDigits 6724)