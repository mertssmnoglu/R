# Uygulamalı İstatistik Dersi 2025-2026
# 26 Eylül 2025 | 2. Hafta

# Ek Kaynaklar
# - https://r-graph-gallery.com/
# - https://r-coder.com/
# - https://www.sthda.com/english/

# 1'den 10'a kadar olan sayıları boy değişkenine ata
boy <- 1:10

# bir vektör tanımla ve boy değişkenine ata
boy <- c(1,3,2,5,6,7,12,34,56,78,90,123)

# boy değişkeninin ortalamasını al
# help("mean)
mean(boy)

# boy değişkeninin standart sapmasını al
# help("sd")
sd(boy)

# boy değişkeninin özetini al
# - minimum değer
# - 1. kartil
# - 2. kartil (medyan)
# - ortalama
# - 3. kartil
# - maksimum değer
# 
# help("summary")
summary(boy)

# boy değişkeninin kartillerini al
quantile(boy)

# boy değişkeninin medyanını al
median(boy)

# boy değişkeninin alt ve üst sınırları al
range(boy)

# boy değişkeninin değişim aralığını hesapla
# alt ve üst sınır çıktısının 2. değerinden 1. değerini çıkar
# 2. çıktı: maksimum değer
# 1. çıktı: minimum değer
range(boy)[2] - range(boy)[1]

# dosyadan veriyi oku
# !!! dosya adını değiştirmeyi unutmayın
# help("read.csv")
notlar <- read.csv(file="data.csv", header=TRUE, sep=",")
head(notlar)

# help("read.delim")
notlar <- read.delim(file="data.txt", header=TRUE, sep=",")
head(notlar)

# veri tipi hakkında bilgi edin
# str(notlar_)
str(notlar)

summary(notlar)

notlar[1,]
notlar[1:3,]
# 4. sütun
notlar[,4]

sd(notlar[,4])
mean(notlar[,4])
min(notlar[,4])
max(notlar[,4])

# rastgele oluşturulmuş veri
# frekans tablosu
veri <- c(1,10, 7,5,4,4,4,3,2,2,2,2,1,1,1,1,1,1,1,1,8,8,8,89,42,73,3,2,4,5,3,2,4,5,3,2,2,2,1,41,65,6,6,42,3,2,1,5,8,9,9,10,2,525,21,7,1,3352,1)
table(veri)

# frekans tablosunun 2. değerini oku
table(veri)[2]

# frekans tablosunun 2. değerinden 3. değerine kadar oku
table(veri)[2:3]
# help("table")
