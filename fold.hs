--foldl and foldr

-- foldl (+) 0 [1,2,3,4] will result in 10 which is 0+1+2+3+4

sum' xs = foldl (+) 0 xs -- sum' [1,2,3] will result in 6

showPlus str num =  "(" ++ str ++ "+" ++ (show num) ++ ")" --showPlus "1" 4  will result in "(1+4)"

-- foldl showPlus "0" [1,2,3,4] will result in "((((0+1)+2)+3)+4)"

showPlus' num str = "(" ++ (show num) ++ "+" ++ str ++ ")"

-- foldr showPlus' "0" [1,2,3,4] will result in "(1+(2+(3+(4+0))))"

-- foldl is slightly faster than foldr
-- but you can only use foldr on infinite lists (thanks to lazy evaluation!)



