-- algebraic types

newtype CustomerId = CustomerId Int

-- the second Customer is the name of the constructor for this new type
-- CustomerId, String, Int are the arguments passed to the constructor for this new data type
data Customer = Customer CustomerId String Int

-- example

alice :: Customer
alice = Customer (CustomerId 13) "Alice" 42

-- Now we use pattern matching in order to define the object properties

getCustomerId :: Customer -> CustomerId

getCustomerId (Customer cust_id name lucky_num) = cust_id

-- or you can write it this way
-- getCustomerId (Customer cust_id _ _) = cust_id

-- algebraic data types are similar to the new types but the constructor can take more than one arg

-- algebraic data types can have more than one constructors

data Bool = True | False;
-- this type has two constructors; True and False

-- this is like an enum in java
data DialogResponse = Yes | No | Help | Quit

-- another example
data MaybeInt = NotInt | JustInt Int
defaultInt :: Int -> MaybeInt -> Int
-- now pattern matching
defaultInt defaultValue NotInt = defaultValue
defaultInt _ (JustInt x) = x

-- defaultInt 3 (JustInt 5) will result in 5 while defaultInt 3 NotInt will result in 3

data StringList = EmptyStringList | ConsStringList String StringList

lengthStringList :: StringList -> Int
lengthStringList EmptyStringList = 0
lengthStringList (ConsStringList _ tail) = 1 + lengthStringList tail

-- parameterized types or polymorphic functions => similar to generics in C#.
data Maybe' a = Just' a | Nothing'

-- a is a generic type
-- x :: Maybe Int
-- x = Nothing

-- now here is an example of a polymorphic fuction using Maybe

fromMaybe :: a -> Maybe' a -> a
-- a function that gets two params; a value of type a (default value for type a)
-- and a Maybe a and returns a value of type a

fromMaybe defaultVal Nothing' = defaultVal
fromMaybe _ (Just' x) = x


-- Now here is the definition of the standard list type in Haskell

data List a = Empty | Cons a (List a)
