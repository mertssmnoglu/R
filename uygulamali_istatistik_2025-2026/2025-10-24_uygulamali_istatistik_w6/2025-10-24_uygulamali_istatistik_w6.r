# Uygulamalı İstatistik Dersi 2025-2026
# 24 Ekim 2025 | 6. Hafta

set.seed(3)

help("Normal", package="stats")

pp <- pnorm(0, 0, 1)
pp

sn <- qnorm(0.75, 0, 1)
sn

help("rnorm")
# Örnek: Ortalama 15, standart sapma 3 olan normal dağılım için
# aşağıdaki olasılıkları bulunuz.
x <- rnorm(1000, 15, 3)

# a) p(x<16)
x_a <- pnorm(16, 15, 3)
x_a

# b) p(x<3)
x_b <- pnorm(3, 15, 3)
x_b

# c) p(x>4)
x_c <- 1 - pnorm(4, 15, 3)
x_c <- pnorm(4, 15, 3, lower.tail=FALSE)
x_c

# d) p(x>18)
x_d <- 1 - pnorm(18, 15, 3)
x_d <- pnorm(18, 15, 3, lower.tail=FALSE)
x_d

# e) p(6<x<19)
x_e_1 <- pnorm(6, 15, 3)
x_e_2 <- pnorm(19, 15, 3)
x_e <- x_e_2 - x_e_1
x_e

# f) p(2<x<11)
x_f_1 <- pnorm(2, 15, 3)
x_f_2 <- pnorm(11, 15, 3)
x_f <- x_f_2 - x_f_1
x_f

# g) p(16<x<17)
x_g_1 <- pnorm(16, 15, 3)
x_g_2 <- pnorm(17, 15, 3)
x_g <- x_g_2 - x_g_1
x_g

# h) p(10<x) && p(x>16)
## = p(10<x) + p(x>16)
x_h_1 <- pnorm(10, 15, 3) # p( x<10 )
x_h_1
x_h_2 <- pnorm(16, 15, 3, lower.tail=FALSE) # p( x>16 )
x_h_2
x_h <- x_h_1 + x_h_2
x_h

##############################################################

x <- seq(-4, 4, length=100)
hx <- dnorm(x)

plot(
    x,
    hx,
    type="l",
    lty=2,
    xlab="Z Degeri",
    ylab="Yogunluk",
    xaxt="n",
    xaxs="r",
    yaxs="r",
)

x_cor = seq(-4, 4, 0.5)

axis(side=1, at=x_cor, labels=TRUE, tick=TRUE, outer=FALSE)
cord_x <- c(-1, seq(-1,0.5, 0.01,), 0.5)
cord_y <- c(0, dnorm(seq(-1, 0.5, 0.01)), 0)
polygon(cord_x, cord_y, col="blue", border=NA)


########

plot(
    x,
    hx,
    type="l",
    lty=2,
    xlab="Z Degeri",
    ylab="Yogunluk",
    xaxt="n",
    xaxs="r",
    yaxs="r"
)

x_cor=seq(-4,4,0.5)

axis(side=1, at=x_cor, labels=TRUE, tick=TRUE, outer = FALSE)
cord_x<-c(-4,seq(-4,-1,0.01,),-1)
cord_y<- c(0, dnorm(seq(-4,-1,0.01,)),0)

polygon(cord_x, cord_y, col="pink" , border = NA)
