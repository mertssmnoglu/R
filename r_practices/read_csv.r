library(here)

# Example paths:
# Windows: "C:/Users/username/Documents/data/data.csv"
# Linux: "/home/username/data/data.csv"
# macOS: "/Users/username/data/data.csv"

# getwd() # Verify the current working directory
getwd()

veri <- read.csv("r_practices/data/data.csv")
print(veri)
