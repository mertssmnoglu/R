vector1 <- c(1,2,3,4,5,6)
m1 <- matrix(vector1, nrow=2, ncol=3)
print(m1)

vector2 <- c(1,2,3, 4,5,6, 7,8,9)
m2 <- matrix(vector2, nrow=3, ncol=3)
print(m2)

vector3 <- c(3,6,1,4)
# Eksik elemanlar varsa, matrisi kolon bazında doldurur
m3 <- matrix(vector3, nrow=4, ncol=4)
print(m3)

vector4 <- c(8,3,9)
# byrow=TRUE: Matrisi satır bazında doldurur
m4 <- matrix(vector4, nrow=3, ncol=3, byrow=TRUE)
print(m4)

vector5 <- c("a", "b", "c")
m5 <- matrix(vector5, nrow=3, ncol=3)
print(m5)

# Matris elemanlarına erişim
vector6 <- c(5,6,7,8,9,10)
m6 <- matrix(vector6, nrow=3, ncol=2)
print(m6)

# matrix[row, column]
print(m6[3,2]) # 10
print(m6[2,1]) # 6
print(m6[1,2]) # 8
