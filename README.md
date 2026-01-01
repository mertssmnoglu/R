# R Pratikleri

Bu repository, **R Programlama Dili**, **İstatistiksel Analiz** ve **Veri Görselleştirme** üzerine örnekler ve pratik çalışmalar içermektedir. Ayrıca **İstanbul Ticaret Üniversitesi İstatistik Bölümü**'nde R kullanılan derslerden alınmış notlar da yer almaktadır.

## Temel Bilgiler

R ile geliştirme, analiz ve görselleştirme yaparken birçok kez ihtiyaç duyabileceğiniz bazı temel bilgiler aşağıda verilmiştir.

### Paket Kurulumları

#### Komut Satırı

```R
install.packages("ggplot2")
```

#### Paketi dahil etme

```R
library(ggplot2)
```

#### R Studio

R Studio'da, "Packages" sekmesine gidip, "Install" butonuna tıklayarak paket ismini yazabilir ve kurulumu gerçekleştirebilirsiniz.

### Veri Yükleme

Veriler birçok farklı formatta olabilir. Aşağıda bazı yaygın veri formatları için R'de veri yükleme örnekleri verilmiştir.

#### CSV

Base R kullanarak:

```R
data_csv <- read.csv("veri.csv")
```

Readr kullanarak:

```R
library(readr)
data_csv <- read_csv("veri.csv")
```

#### Excel

```R
library(readxl)
data_excel <- read_excel("veri.xlsx", sheet = "Sayfa1")
```

## Lisans

Bu repository MIT Lisansı altında lisanslanmıştır. Detaylar için [LICENSE](LICENSE) dosyasına bakınız.
