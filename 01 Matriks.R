# Membuat matriks menggunakan "cbind()" dan "rbind()"
col1 <- c(1,2,3,4,5,6)
col2 <- c(2,3,4,5,6,7)
col3 <- c(3,4,5,6,7,8)
my_data <- cbind(col1, col2, col3)
my_data

# Merubah atau menambahkan nama baris
rownames(my_data) <- c("row1", "row2", 
                       "row3", "row4", 
                       "row5", "row6") #rownames utk baris
my_data
colnames(my_data) <- c("a", "b", "c") #colname utk kolom
my_data

# TRANSPORE ("t(my_data)")
t(my_data)

matrix(data = NA, nrow = 1, ncol = 1, byrow = FALSE,
       dimnames = NULL)
matrix(data = NA, nrow = 2, ncol = 3, byrow = FALSE,
       dimnames = NULL)

data <- matrix(
          data = c(1,2,3, 11,12,13), 
          nrow = 2, byrow = TRUE,
          dimnames = list(c("row1", "row2"), 
                          c("C.1", "C.2", "C.3"))
          )
data
ncol(my_data)
nrow(my_data)
dim(my_data)
my_data[2,]
t(my_data)
my_data[2,] #pilih baris 2
my_data[2:4,] #pilih baris 2 sampai baris 4
my_data[c(2,4),] #pilih baris 2 dan baris 4
my_data[2, 3] #pilih baris 2 dan kolom 3
my_data*2 #Mengalikan matriks yg kita punya dengan 2
log2(my_data) #mencari nilai log basis 2 dari matriks
colSums(my_data) #menjumlahkan colom
rowSums(my_data) #menjumlahkan Baris
rowMeans(my_data) #Rata-rata tiap baris
colMeans(my_data) #Rata-rata tiap kolom


#melakukan perhitungan statistika "apply(x, MARGIN, FUN)"
help(apply)

apply(my_data, 1, mean) # Rata-rata pada tiap baris
apply(my_data, 2, median) # Median pada tiap kolom
apply(my_data, 2, mean)
apply(my_data, 1, median)