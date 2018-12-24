-- map length ["hello", "world", "!"] -- will result in [5,5,1]

-- map (1+) [2,3,4] -- will result in [3,4,5]

-- let's redefine the double function using partial map function
double = map (2*) -- double [2,3,4] will result in [4,6,8]

