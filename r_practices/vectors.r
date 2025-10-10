# Vectors

renter_count <- c(1, 2, 3, 4, 5, 6, 9, 10)
my_vec2 <- c(25, 40, 199, 250, 84, 75, 100, 150)

# Plot it with labels
plot(
    renter_count,
    my_vec2,
    type = "b", # Both points and lines
    col = "blue",
    lty = 1, # Solid line type
    lwd = 3, # Line width
    xlab = "Kiracı Sayısı",
    ylab = "Kira Ücreti",
    main = "İstanbul Anadolu Yakası Kiralık Konut Fiyatları
  Toplam Kiralık Konut Sayısı: 5000"
)
