# ==== Day05 Package & External Data Import ====

# 1. Check working directory
getwd()

# 2. Set working directory
# setwd("Your local folder path")

# 3. Install packages
install.packages("readr") # Efficient Reading and Writing of CSV Files
install.packages("readxl") # Read Excel files

# 4. Load packages
library(readr)
library(readxl)

# 5. Practice with built-in datasets
data(iris)
head(iris)
str(iris)

# 6. Simulate exporting data as CSV
psy_data <- iris
write_csv(psy_data, "Psychology_Score_Data.csv")

# 7. Read CSV files
csv_data <- read_csv("Psychology_Score_Data.csv")

# 8. Read Excel spreadsheet Import Excel 
# excel_data <- read_excel("Your_Data.xlsx")

