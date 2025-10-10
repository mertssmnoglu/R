library(here)

# Example paths:
# Windows: "C:/Users/username/Documents/data/data.csv"
# Linux: "/home/username/data/data.csv"
# macOS: "/Users/username/data/data.csv"

my_path <- here("data", "dat.csv")
veri <- read.csv("data/veri1.csv")
print(veri)
