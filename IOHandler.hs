module IOHandler where

import DataTypes
import Utils

-- Helper function to replace commas with spaces
replaceComma :: Char -> Char
replaceComma ',' = ' '
replaceComma c   = c

parsePatient :: String -> Patient
parsePatient line = 
    -- We replace commas with spaces, then use standard 'words' to split
    case words (map replaceComma line) of
        [n, a, h, w] -> Patient n (read a) (read h) (read w)
        _            -> error "Invalid Data Format"

formatReport :: PatientReport -> String
formatReport (PatientReport p bmi cat) = 
    pName p ++ " | BMI: " ++ show (round2 bmi) ++ " | Risk: " ++ show cat