# BMI & Health Risk Calculator

## Group Members
* Jathusan U - EG/2020/3977
* Rusham M.G.R.M.M - EG/2020/4170
* Ahamed M.R.R - EG/2020/4353
* Rishinath K - EG/2020/4165

## Project Overview
This application processes patient data to calculate Body Mass Index (BMI) and categorize health risks. It demonstrates Functional Programming principles by using an immutable pipeline to transform raw input strings into structured health reports.

**Industrial Relevance:** In healthcare, data integrity is critical. This project uses pure functions to ensure that patient data is never accidentally mutated during processing, providing a reliable audit trail for health analytics.

## How to Run

### Method 1: Using GHCi (Interactive)
1. Navigate to the project folder.
2. Run `ghci Main.hs`.
3. Type `main` and press Enter.

### Method 2: Compile to Executable
1. Run `ghc --make Main.hs -o bmi_calc`.
2. Run the executable:
   * Windows: `bmi_calc.exe`
   * Mac/Linux: `./bmi_calc`

## Sample Input/Output
**Input:** `Tom,30,1.75,100`

**Output:** `--- Full Report --- Tom | BMI: 32.65 | Risk: Obese

--- High Risk Alert (Obese) --- Tom | BMI: 32.65 | Risk: Obese`

## FP Concepts Used
* **Pure Functions:** Logic for BMI calculation is side-effect free.
* **Algebraic Data Types (ADTs):** `HealthCategory` ensures valid risk states.
* **Higher-Order Functions:** `map` used for transformation, `filter` used for querying high-risk patients.
