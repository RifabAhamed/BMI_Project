module Main where

import DataTypes
import Processing
import IOHandler

main :: IO ()
main = do
    putStrLn "--- Health Risk Calculator ---"
    
    -- 1. Read Data (In a real app, read from a file. Here we mock it or read user input)
    putStrLn "Enter patient data (Name,Age,Height,Weight) or type 'load' for demo data:"
    input <- getLine
    
    let rawData = if input == "load" 
                  then ["John,25,1.80,75", "Alice,30,1.60,85", "Bob,50,1.75,50", "Eve,40,1.65,95"]
                  else [input] -- Handling single input for simplicity
    
    -- 2. Pipeline Execution
    let patients = map parsePatient rawData
    let reports = analyzePopulation patients
    let highRisk = getHighRiskPatients reports
    
    -- 3. Output Results
    putStrLn "\n--- Full Report ---"
    mapM_ (putStrLn . formatReport) reports
    
    putStrLn "\n--- High Risk Alert (Obese) ---"
    if null highRisk
        then putStrLn "No high risk patients found."
        else mapM_ (putStrLn . formatReport) highRisk