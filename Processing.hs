module Processing where

import DataTypes

-- | Pure function: Calculates BMI (Weight / Height^2)
calculateBMI :: Patient -> Double
calculateBMI p = (pWeight p) / ((pHeight p) * (pHeight p))

-- | Pure function: Determines category based on BMI
classifyRisk :: Double -> HealthCategory
classifyRisk bmi
    | bmi < 18.5  = Underweight
    | bmi <= 24.9 = Normal
    | bmi <= 29.9 = Overweight
    | otherwise   = Obese

-- | Pure function: Transforms a Patient into a Report
-- Demonstrates: Data Transformation
createReport :: Patient -> PatientReport
createReport p = 
    let bmi = calculateBMI p
        cat = classifyRisk bmi
    in PatientReport p bmi cat

-- | Higher-Order Function: Process a whole list of patients
-- Demonstrates: map
analyzePopulation :: [Patient] -> [PatientReport]
analyzePopulation patients = map createReport patients

-- | Higher-Order Function: Filter only high-risk patients (Obese)
-- Demonstrates: filter
getHighRiskPatients :: [PatientReport] -> [PatientReport]
getHighRiskPatients reports = filter (\r -> rCategory r == Obese) reports