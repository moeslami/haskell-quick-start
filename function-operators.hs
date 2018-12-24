-- function operators

-- (.) function composition
-- ($) function application
sl = length . show -- this one doesn't work. stringLength 123 show result in 3

-- f . g in math is the same as f o g (f of g)

-- f . g x is the same as f (g x)

-- $ is to apply function to an argument which seems useless at first
-- but here is a more use for it

-- zipWith ($) [(2*), (1+), \x -> (x `mod` 2)] [2, 22, 27] will result in [4, 23,1]
-- it applies the function from first list to an argument from the second list
