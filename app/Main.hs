module Main where

import P001
import P002
import P003
import P004
import P005
import P009

main :: IO ()
main = do
    putStrLn $ "P001: " ++ p001_solution 
    putStrLn $ "P002: " ++ p002_solution 
    putStrLn $ "P003: " ++ p003_solution 
    putStrLn $ "P004: " ++ p004_solution
    putStrLn $ "P005: " ++ p005_solution     
    putStrLn $ "P009: " ++ p009_solution