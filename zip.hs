-- zip [1,2,3] ["a", "b", "c"] results in list of pairs [(1,"a"),(2,"b"),(3,"c")]
-- zip [1,2] ["a", "b", "c", "d"] results in list of pairs [(1,"a"),(2,"b")]

-- use zipWith to provide a zipping function

-- zipWith (+) [1,2,3] [6,7,8] results in [7,9,11]

plus3 x y z = x + y + z

-- zipWith3 plus3 [1,2] [3,4] [4,5,6] will result in [8,11]

-- there is also zipWith4 etc





