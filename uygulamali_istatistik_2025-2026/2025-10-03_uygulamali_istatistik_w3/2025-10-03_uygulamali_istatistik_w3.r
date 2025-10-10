# Uygulamalı İstatistik Dersi 2025-2026
# 3 Ekim 2025 | 3. Hafta

# Ek Kaynaklar
# - https://r-coder.com/plot-r/

# Her çalıştırmada aynı rastgele sayıları üretmesi için:
set.seed(1)

# Rastgele 500 tane sayı üret:
# help("rnorm")
x <- rnorm(500, 100, 10)
y <- rnorm(500, 100, 15)

# help("plot")
plot(
    x, # x eksenindeki değerler
    y, # y eksenindeki değerler
    main = "Scatterplot", # Başlık
    xlab="X axis", # x ekseninin adı
    ylab="Y axis", # y ekseninin adı
    xlim=c(50,150), # x ekseninin sınırları
    ylim=c(50,150), # y ekseninin sınırları
    type="l"
)

# 1'den 5'e kadar sayılar ve kareleri
x <- 1:5
y <- x^2

# Çizgi grafiği
plot(
    x,
    y,
    type="l",
    lwd=2
)

# Varsayılan nokta grafiği
plot(
    x,
    y,
    pch = 23,     # ikon tipi
    # pch = c("⚪", "🔴", "🔵", "🟡", "🟣")
    bg = "red",   # Arka plan rengi
    col = "blue", # Sütun rengi
    cex = 3,      # Sembol boyutu
    lwd = 3,      # Kenar genişliği
    ann= FALSE    # başlık ve etiketleri kaldır
)
text(3,15, "Parabol")


# Bir çıktıya 3 grafik ekle
par(mfrow=c(1,3)) # 1 satır 3 sütun
plot(x, y, main="1. Grafik")
plot(x, y, main="1. Grafik")
plot(x, y, main="1. Grafik")
par(mfrow=c(1,1)) # Tek grafiğe geri dön

#
#
#
#
#

# Her çalıştırmada aynı rastgele sayıları üretmesi için:
set.seed(1)

# Rastgele 500 tane sayı üret:
# help("rnorm")
x <- rnorm(500, 100, 10)
y <- rnorm(500, 100, 15)
# Veri çerçevesi oluştur ve farklı renklerde göster
grup <- ifelse(x<90, "mavi", ifelse(x>110, "yeşil", "kırmızı"))
veri <- data.frame(x, y, gr=factor(grup))
gr=factor(grup)
colors <- c("red", "green", "blue")
plot(
    veri$x, 
    veri$y,
    col=colors[veri$gr],
    pch=21, # ikon tipi
    lwd=2,  # kenar kalınlığı
)

lines(
    70:140,     # x ekseni
    70:140,     # y ekseni
    lwd=3,      # çizgi kalınlığı
    col="black" # çizgi rengi
)
lines(
    140:70,           # x ekseni
    70:140,           # y ekseni
    lwd=3,            # çizgi kalınlığı
    col="dark orange" # çizgi rengi
)
