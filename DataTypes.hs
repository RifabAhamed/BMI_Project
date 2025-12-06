module DataTypes where

-- | Represents a health risk category
data HealthCategory = Underweight | Normal | Overweight | Obese
    deriving (Show, Eq)

-- | Represents a single patient
-- Using Record Syntax for clarity
data Patient = Patient {
    pName :: String,
    pAge :: Int,
    pHeight :: Double, -- in meters (e.g., 1.75)
    pWeight :: Double  -- in kg (e.g., 70.0)
} deriving (Show)

-- | A new data type to hold the result of a calculation
data PatientReport = PatientReport {
    rPatient :: Patient,
    rBMI :: Double,
    rCategory :: HealthCategory
} deriving (Show)