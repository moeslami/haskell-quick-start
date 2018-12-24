
-- numbers

removeOdd nums =
 if null nums
  then []
  else
   if mod (head nums) 2 == 0
   then (head nums) : (removeOdd (tail nums))
   else removeOdd (tail nums)

double [] = []
double [x] = [3 * x]
double (x:xs) = (2*x) : (double xs)

double2 num = case num of
 [] -> []
 (x : xs) -> 2*x : double2 xs

pow2 n
 | n == 0 = 1
 | otherwise = 2 * (pow2 (n-1))

removeOdd2 [] = []
removeOdd2 (x : xs)
 | mod x 2 == 0 = x : removeOdd2 xs
 | otherwise = removeOdd2 xs

anyEven [] = False
anyEven (x : xs)
 | mod x 2 == 0 = True
 | otherwise = anyEven xs

anyEven2 nums = case (removeOdd2 nums) of
 [] -> False
 otherwise -> True
