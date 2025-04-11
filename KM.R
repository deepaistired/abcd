#kmedoids
#install.packages("cluster")
library(cluster)
data <- data.frame(x=c(1,2,1.5,8,9,8.5,25,24,23.5,25.5), y=c(1,1.5,2,8,8.5,9,25,24.5,25,25.5))
print("Dataset:")
print(data)
plot(data$x, data$y, main="Scatter Plot of Dataset", xlab="x", ylab="y", pch=19)
plot(data$x, data$y, main="Scatter Plot of Dataset", xlab="x", ylab="y", pch=19)
kmedoids_result <- pam(data, 3)
print(kmedoids_result)
plot(data$x, data$y, col=kmedoids_result$cluster, pch=19, main="Kmedoids clustering results", xlab="x", ylab="y")
points(kmedoids_result$centers[,1], kmedoids_result$centers[,2], col=1:3, pch=8, cex=2)
kmedoids_result$medoids