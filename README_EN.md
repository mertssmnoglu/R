# R Practices

This repository includes examples and practical exercises on **R Programming**, **Statistical Analysis**, and **Data Visualization**. It also contains notes from courses at the **Istanbul Commerce University Department of Statistics**, where R is actively used.

## Basic Information

When developing, analyzing, and visualizing with R, you may frequently need some basic information provided below.

### Package Installations

#### Command Line

```R
install.packages("ggplot2")
```

#### Importing the Package

```R
library(ggplot2)
```

#### R Studio

In R Studio, you can go to the "Packages" tab, click the "Install" button, type the package name, and complete the installation.

### Data Loading

Data can come in many different formats. Below are examples of loading data in R for some common data formats.

#### CSV

Using Base R:

```R
data_csv <- read.csv("data.csv")
```

Using Readr:

```R
library(readr)
data_csv <- read_csv("data.csv")
```

#### Excel

```R
library(readxl)
data_excel <- read_excel("data.xlsx", sheet = "Sheet1")
```

## License

This repository is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
