-- records Do Not Use records
-- records are weakest points of Haskell and we should avoid using them
-- not extensible
-- no shared names accross differnet types

newtype CustomerId = MakeCustomerId Int
data Customer = MakeCustomer
  {
    customerId :: CustomerId
    , name :: String
    , luckyNumber :: Int
  }

cust1 :: Customer
cust1 = MakeCustomer
  {
    customerId = MakeCustomerId 10
    , name = "Mohammad Eslami"
    , luckyNumber = 24
  }

cust2 :: Customer
cust2 = cust1 { name = "Sepideh Pourmousa" } -- creating a new customer using an existing customer

  -- name cust1 will result in "Mohammad Eslami"
  -- name cust2 will result in "Sepideh Pourmousa"
  -- luckyNumber cust1 will result in 24
