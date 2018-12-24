pass3 f = f 3 -- passing function as an argument
add1 x = x + 1
multi2 x = 2 * x

compose f g x = f (g x)

always7 = const 7 -- making const functions; for example always7 5 will still result in 7

foo x y z = x + y + z

foo_1_2 = foo 1 2 -- making a partial function from foo

foo_1_2_3 = foo_1_2 3

pass x f = f x
pass3' = pass 3 -- partial funtion
