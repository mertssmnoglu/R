library(readxl)
library(here)

# Example paths:
# Windows: "C:/Users/username/Documents/data/data.xlsx"
# Linux: "/home/username/data/data.xlsx"
# macOS: "/Users/username/data/data.xlsx"

excel_file_path <- here("data", "data.xlsx")
data <- read_excel(excel_file_path, sheet = "Sheet1")

print(data)
