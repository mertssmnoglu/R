# Uygulamalı İstatistik Dersi 2025-2026
# 10 Ekim 2025 | 4. Hafta

# Ek Kaynaklar
# - https://r-coder.com/barplot-r/
# - https://r-coder.com/histogram-r/
# - https://r-coder.com/boxplot-r/
# - https://r-coder.com/save-plot-r/

data(mtcars)
Table <- table(mtcars$cyl)
Table

## Bar

barplot(Table, main = "Absolute frequency", border='blue')

bar <- barplot(
    Table,
    main = "Sütun Grafiği",
    col=rainbow(3),
    ylim=c(0,20)
)

# grid(nx = NA, ny = NULL, lwd = 1, lty = 1, col = "gray")

text(bar, Table+2, labels=Table, lwd=5)

vs <- factor(mtcars$vs)
vs
levels(vs) <- c("High", "Low")
vs
Yt <- table(mtcars$cyl, vs)
Yt
barplot(Yt, beside=TRUE)
barplot(Yt, beside=TRUE, horiz=TRUE)

## Histogram

x <- rnorm(1000, 10, 3)
y <- rnorm(1000, 20, 3)
z <- seq(min(x,y), max(x,y), length=60)
f <- dnorm(z, mean=mean(x), sd=sd(x))

hist(x, breaks=100, col='blue', xlim=c(1,40), prob=TRUE)
# hist(y, breaks=100, add=TRUE, col='cyan')

lines(z, f, col='red', lwd=3)

## PDF

pdf("histogram.pdf") # PDF dosyası oluşturma
# Bu blok içindeki grafikler "histogram.pdf" dosyasına kaydedilir.

hist(x, breaks=100, col='blue', xlim=c(1,40), prob=TRUE)
lines(z, f, col='red', lwd=3)

dev.off() # PDF dosyasını kapatma