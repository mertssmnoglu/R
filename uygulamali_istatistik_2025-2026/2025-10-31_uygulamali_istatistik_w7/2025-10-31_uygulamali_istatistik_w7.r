# Uygulamalı İstatistik Dersi 2025-2026
# 31 Ekim 2025 | 7. Hafta

# help(shapiro.test) # Shapiro-Wilk Testi
# help(ks.test) # Kolmogorov-Smirnov Testi

set.seed(4)

hipo <- rnorm(100, 5, 1)
shapiro.test(hipo)

hip <- rnorm(100, 6, 2)
ks.test(hipo, hip)
cat(">>> p değerine bakıldığında bu iki veri setinin benzer olmadığı sonucuna varılır.")

minx <- min(c(hipo, hip))
maxx <- max(c(hipo, hip))

hist(
    hipo,
    main="Histogram of rnorm with Hipo and Hip",
    xlab="",
    ylab="",
    col="darkblue",
    xlim = c(0, 12),
    ylim = c(0, 25)
)
hist(
    hip,
    xlab="",
    ylab="",
    col="transparent",
    add=TRUE # Üst üste ekleme
)

legend("topright", legend=c("Hipo", "Hip"), fill=c("darkblue", "transparent"))

# help("t.test") # T Testi

# 4.5 ile karşılaştırma
t.test(
    hipo,
    alternative = "two.sided",
    mu = 4.5, # anakütle ortalaması
)

# 4.9 ile karşılaştırma
t.test(
    hipo,
    alternative = "two.sided",
    mu = 4.9
)

# 4.9 ile karşılaştırma
t.test(
    hipo,
    alternative = "two.sided",
    mu = 4.95
)

xort <- 46.2
mu <- 48.5
s <- 4
n <- 30

# t = (X̄ - μ) / (s / √n)
t <- (xort - mu) / (s / sqrt(n))
t

alpha <- .05
t.tablo <- qt(1 - alpha/2, df = n - 1)
c(-t.tablo, t.tablo)

pdegeri <- 2 * pt(t, df = n - 1)
pdegeri
