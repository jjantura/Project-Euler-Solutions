module P001 (
    p001,
    p001_solution
 ) where 

p001 :: Integer -> Integer -> Integer
p001 ll ul = sum[x | x<-[ll..ul], x `mod` 3 == 0  || x `mod` 5 == 0]  

p001_solution :: String
p001_solution = show $ p001 0 999