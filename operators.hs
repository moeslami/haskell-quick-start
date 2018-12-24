-- Operators +, *, :, ++ are all functions

-- (+) 5 3 is another way to say 5 + 3. put parans around the operator to use it as a function

pass_3_4 f = f 3 4 -- pass_3_4 (+) will result in 7


-- defining new operators is easy in Haskell
(a,b) .+ (c,d) = (a + c , b + d) -- (.+) (1,2) (4,8)  results in (5,10)

-- partial plus 1 function
plus1 = (+) 1
plus1' = (+1)
plus1'' = (1+)
