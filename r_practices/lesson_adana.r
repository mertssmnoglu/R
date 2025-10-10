# Adana ilinde 2017 ve 2018 yıllarındaki süt mısırı üretim miktarlarını bir liste içinde tutalım.
# Bu liste içinde il adını, yılları ve süt mısırı üretim miktarlarını bir matris içinde tutalım.
# Bu listeyi ekrana yazdıralım.

il <- "Adana"
yillar <- c(2017, 2018)
sm_uretim <- matrix(c(1.1, 1.3, 2.1, 2.5), nrow=2, ncol=2, byrow=TRUE)
adana_tarim <- list(il, yillar, sm_uretim)

print(adana_tarim[3])
