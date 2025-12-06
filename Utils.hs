module Utils where

-- | Helper to round BMI to 2 decimal places for display
round2 :: Double -> Double
round2 x = (fromIntegral (round (x * 100))) / 100