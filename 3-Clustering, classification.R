# Install packages
  install.packages("caret")
  install.packages("kernlab")
  install.packages("cluster")
  library(caret)
  library(kernlab)
  library(cluster)

# Đọc dữ liệu từ bộ dữ liệu iris
data(iris)

# Phân lớp sử dụng SVM
set.seed(123)
svm_model <- train(Species ~ ., data = iris, method = "svmRadial")

# Hiển thị kết quả phân lớp
print(svm_model)

# Phân cụm sử dụng K-means
# Lựa chọn số cụm, ở đây là 3 dựa trên dữ liệu Iris
kmeans_clusters <- kmeans(iris[, 1:4], centers = 3, nstart = 20)

# Hiển thị kết quả phân cụm
print(kmeans_clusters)

# Kiểm tra kết quả phân cụm
table(kmeans_clusters$cluster, iris$Species)
