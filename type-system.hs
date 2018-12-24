-- type system
-- Haskell is a staticlally typed system that relies very much on type inferrance
-- in ghci you can use :t variable-name to get the type definition for variabel-name
-- for example :t lines will result in   lines :: String -> [String]

str :: [Char]
str = "hello"

-- the above two lines are equivalent to the follwing line
str' = "hello" -- the type definition is not necessary

foo :: Int -> String
foo x = show (2*x)


-- y = 3.1 + 2 will result in 5.1

-- but y = (3.1 :: Double) + (2 :: Int) will throw error as there is no implicit type conversion between int
-- and double in Haskell but if you don't specify the annotation, Hadkell is samrt and will be able to figure
-- out and in this case it will assume both 3.1 and 2 as double numbers.

-- we need annotaions somethimes to help the compiler
-- for example the follwoing line will cause a compile error
-- x = show (read "123")
-- but writing it as the following solves the issue
-- x = show (read "123" :: Int)

boo :: Int
boo = x + y
  where x = mod 53 4
        y = 4

-- polymorphic functions are similar to generics in C#
-- polymorphic function: a funtion with a type variable. The type varable starts with a lower case

length' :: [a] -> Int -- a function that takes a list of type <a> (polymorphic or generic) and returns Int
length' [] = 0
length' (x:xs) = length' xs + 1

-- lets define a head function

head' :: [a] -> a -- head is a function that gets a list of type <a> and returns a vlaue of again type <a>
head' (x:xs) = x

-- look at the following sum definition
sum' [] = 0
sum' (x:xs) = x + sum' xs

-- now if we do :t sum` in ghci this will be the output:
-- sum' :: Num p => [p] -> p
-- the statement before the fat arrow (=>) is the constraint for the type variable <a>.
-- it means that the <a> cannot be just anything. It has to be a numeric type (Num) in order
-- for the function to work fine. For example it won't work with a string input








