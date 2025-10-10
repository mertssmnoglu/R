# Kiraz üretimi ve gübre detaylarını tutalım
il <- "Adana"
gubredoz <- c("N20", "N30", "N50","N20", "N30", "N50", "N20", "N30", "N50")
kiraz <- c(90, 118, 140, 90, 113, 75, 105, 144, 156)

# Summary fonksiyonu ile değişkenimizin temel istatistiklerini görelim

# Min
# %25(Q1)
# %50(Median, Q2)
# Mean
# %75(Q3)
# Max
summary(kiraz)

# Vektörü kategorik hale getirmek için factor() kullanalım
gubredoz_ctg <- factor(gubredoz)
summary(gubredoz_ctg)

# Kategorik hale gelen faktörümüz ordinal olduğu için küçükten büyüğe sıralayarak gösterelim
gubredoz_ctg <- factor(gubredoz, levels=c("N20", "N30", "N50"), ordered=TRUE)
print(gubredoz_ctg)

# ============
# Hazır veri setleri üzerinde çalışmak
# ============

library(datasets) # datasets kütüphanesini uygulamamıza dahil edelim
attach(mtcars) # `mtcars` isimli motorlu taşıtların verilerini içeren hazır kütüphaneyi kullanalım
print(mtcars)

tablo1 <- table(cyl)
tablo2 <- table(gear)
print(tablo1)
print(tablo2)

# Çapraz tablo oluşturma
tablo3 <- table(cyl, gear) 
print(tablo3)

# Toplam
margin.table(tablo3, 1) # Satır Toplamı
margin.table(tablo3, 2) # Sütun Toplamı
margin.table(tablo3) # Genel Toplam

# Olasılık Tablosu
prop.table(tablo3)

tablo4 <- table(cyl, gear, carb)
ftable(tablo4)

# ============
# Kayıp Değer Sınaması
# ============

x <- c("Adana", NA, "Mersin", "Hatay", NA)
is.na(x) # TRUE olan değerler boş değerlerdir

# Sıralama

# mtcars veri setini mpg değişkenine göre sıralayalım
mtcars.s1 <- mtcars[order(mpg),]
mtcars.s2 <- mtcars[order(mpg, decreasing=TRUE),]
mtcars.s3 <- mtcars[order(mpg),cyl,]
