-- custom types

-- type synonyms allow  we define new synonyms for existing types

type String = [Char]

type Point = (Double,Double)

midpoint :: Point -> Point -> Point

midpoint (x1, y1) (x2, y2) = ((x1 + x2)/2 , (y1 + y2)/2)

-- midpoint (1,2) (3,4) results in (2.0,3.0)

-- Important: type synonyms are interchangable with the acutal underlaying types

-- In contrast, New Types (newtype) is representd by an existing type but it cannot be mixed up
-- with its representation

-- this is how we create a new type. MakeCustomerId is the constructor to make sure that the
-- new type CustomerId is only created (from Int) by calling the constructor.

newtype CustomerId = MakeCustomerId Int

-- and this is how  we can define a new variable of that new type

customer1 :: CustomerId
customer1 = MakeCustomerId 12

-- We cannot say "customer1 = 12".

-- we can use the power of pattern matching to get the underlaying Int form CustomerId

customerToInt :: CustomerId -> Int

customerToInt (MakeCustomerId i) = i  -- this is so weird and is like running the constructor backward

-- customerToInt customer1 will result in 12




