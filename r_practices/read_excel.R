library(here)
library(readxl)
# install.packages("readxl")

# Example paths:
# Windows: "C:/Users/username/Documents/data/data.xlsx"
# Linux: "/home/username/data/data.xlsx"
# macOS: "/Users/username/data/data.xlsx"

# getwd() # Verify the current working directory
getwd()

veri <- read_excel(
    "r_practices/data/data.xlsx", # Path
    sheet = "data"                # Sheet name
)

print(veri)
