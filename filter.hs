-- filter

notNull xs = not (null xs)

-- filter notNull ["", "hello", "", "world", ""] will result in ["hello", "world"]

isEven x = mod x 2 == 0
isEven' x = x `mod` 2 == 0
removeOdd = filter isEven

-- removeOdd [2,3,4,5,6] will result in [2,4,6]

-- map and filter could be combined together like the following

-- map snd (filter fst [(True,1), (False, 2), (False, 3), (True, 4)]) will result in [1,4]

