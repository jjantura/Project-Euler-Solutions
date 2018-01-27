module P001 (
    p001
 ) where 

p001 :: Integer -> Integer -> Integer
p001 ll ul = sum[x | x<-[ll..ul], x `mod` 3 == 0  || x `mod` 5 == 0]  
