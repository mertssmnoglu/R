# Uygulamalı İstatistik Dersi 2025-2026
# 17 Ekim 2025 | 5. Hafta

set.seed(1)

# Örnek veriler
x <- rnorm(500)
y <- x + rnorm(500)

# Verileri çiz
plot(x, y)

# x ve y değişkenlerini birleştir
M <- cbind(x, y)
plot(
    M,
    pch = 21,
    bg = "red",  
    col = "blue", 
    cex = 3,     
    lwd = 3
)

title(
    main = "İsim Soyisim",
    sub = "R Uygulamalı İstatistik",
    xlab = "X Ekseni",
    ylab = "Y Ekseni"
)

data(mtcars)
attach(mtcars)

# Frekans tablosu
my_table <- table(cyl)
my_table

# 1 Satır ve 2 Sütunlu grafik alanı oluştur
par(mfrow = c(1, 2))

# Absolute frequency barplot
barplot(
    my_table,
    main = "Absolute frequency",
    col = rainbow(3)
)

# Relative frequency barplot
barplot(
    prop.table(my_table) * 100,
    main = "Relative frequency (%)",
    col = rainbow(3)
)

par(mfrow = c(1, 1))

barplot(
    my_table,                               # Data
    main = "Customized bar plot",           # Title
    xlab = "Number of cylinders",           # X-axis label
    ylab = "Frequency",                     # Y-axis label
    border = "black",                       # Bar border colors
    col = c("darkgrey", "darkblue", "red")  # Bar colors
)

am <- factor(am)

levels(am) <- c("Automatic", "Manual")
other_table <- table(cyl, am)

barplot(
    other_table,
    main = "Grouped barchart",
    xlab = "Transmission type", ylab = "Frequency",
    col = c("darkgreen", "green", "lightgreen"),
    legend.text = rownames(other_table),
    beside = TRUE
) 

var1 <- rnorm(1000, mean = 50, sd = 10)

hist(
    var1,
    main = "Frekans Histogramı",
    xlab = "Distance (miles)",
    ylab = "Frequency",
    col = "lightblue",
    border = "black",
    breaks = 30
)
