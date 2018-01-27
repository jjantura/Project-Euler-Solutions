sum_of_multiplies :: Integer -> Integer -> Integer
sum_of_multiplies ll ul = sum[x | x<-[ll..ul], x `mod` 3 == 0  || x `mod` 5 == 0]  
foo = print $ sum_of_multiplies 1 999
main = foo
