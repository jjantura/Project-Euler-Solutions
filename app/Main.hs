module Main where

import P001
import P002
import P003
import P004 
import P005
import P006
import P007
import P008
import P009
import P010

main :: IO ()
main = do
    putStrLn $ "P001: " ++ p001_solution 
    putStrLn $ "P002: " ++ p002_solution 
    putStrLn $ "P003: " ++ p003_solution 
    putStrLn $ "P004: " ++ p004_solution
    putStrLn $ "P005: " ++ p005_solution -- TODO: should be optimized
    putStrLn $ "P006: " ++ p006_solution
    putStrLn $ "P007: " ++ p007_solution
    putStrLn $ "P008: " ++ p008_solution
    putStrLn $ "P009: " ++ p009_solution
    putStrLn $ "P010: " ++ p010_solution