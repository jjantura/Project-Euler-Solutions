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
import P011
import P016

import P020

import P048

import P116

import P148

import P211

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
    putStrLn $ "P011: " ++ p011_solution
    putStrLn $ "P016: " ++ p016_solution
    
    putStrLn $ "P020: " ++ p020_solution

    putStrLn $ "P048: " ++ p048_solution

    putStrLn $ "P116: " ++ p116_solution
    
    putStrLn $ "P148: " ++ p148_solution

    putStrLn $ "P211: " ++ p211_solution
