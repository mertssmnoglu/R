cesit <- c("İnek", "Keçi", "Koyun", "Manda")
su <- c(87.3, 87.1, 82.9, 82.1)
yag <- c(3.5, 4.1, 6.2, 7.9)
protein <-c(3.4, 3.7, 5.4, 4.2)
laktoz <- c(4.8, 4.2, 4.3, 4.9)
mineral <- c(0.75, 0.78, 0.85, 0.78)

sisesut<- c(TRUE, FALSE, FALSE, TRUE)  # Boolean Vector | Mantıksal Vektör
## Bütün hayvanlar süt verebilen hayvanlar ancak hepsi süt vermek zorunda değil. Süt vermiş olan hayvanları TRUE, süt vermemiş olanları FALSE olarak işaretledik.

# Sadece istenilen elemanları getirme
protein[2:3] # 2 ve 3. elemanları getirir 
protein[5] # NA | Not Available | Mevcut Değil

df <- data.frame(
  cesit,
  su,
  yag,
  protein,
  laktoz,
  sisesut
)
print(df)

# Varolan veri çerçevesine mineral kolonunu ekleyelim
df$mineral <- mineral
print(df)

df <- df[, -6] # 6. kolon olan şişe süt kolonunu silelim
print(df)

df <- cbind(df, sisesut) # Mineral kolonunu tekrar ekleyelim
print(df)

satir_no <- 2
sutun_no <- 3

print(df[satir_no, sutun_no]) # İlgili satır ve sütunun değerini getirir
print(df[satir_no, ]) # İlgili satırın değerlerini getirir
print(df[, sutun_no]) # İlgili sütunun değerini getirir
