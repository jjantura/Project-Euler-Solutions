sx a b = sum[x | x<-[a..b], x `mod` 3 == 0, x `mod` 5 == 0]  
a = 1
b = 1000
foo = print $ sx a b
main = foo
