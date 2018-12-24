-- lambda

-- plus3 x y z = x + y + z
-- zipWith3 plus3 [1,2] [3,4] [4,5,6] will result in [8,11]

-- inlining the plus3 function as a lambda...
-- zipWith3 (\ x y z -> x + y + z) [1,2] [3,4] [4,5,6] will also result in [8,11]

-- map (2*) [1,2,3] will result in [2,4,6]

-- map (\ x -> 2*x) [1,2,3] will also result in [2,4,6]

