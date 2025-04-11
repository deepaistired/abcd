#kmeans clustering
# Create an example dataset
set.seed(123) # for reproducibility
data <- data.frame(x=c(1,2,1.5,8,9,8.5,25,24,23.5,25.5), 
                   y=c(1,1.5,2,8,8.5,9,25,24.5,25,25.5))
# Print the dataset
print("Dataset:")
print(data)
plot(data$x,data$y,main="Scatter plot of dataset",xlab="x",ylab="y",pch=19)
#kmeans with 3 clusters
kmeans_result <- kmeans(data, centers=3)

# Print K-means Clusters
print("K-means Clustering:")
print(kmeans_result)

# Plot the data with clusters
plot(data$x, data$y, col=kmeans_result$cluster, pch=19, 
     main="K-means Clustering Results", xlab="x", ylab="y")
points(kmeans_result$centers[,1], kmeans_result$centers[,2], col=1:3, pch=8, cex=2)
# Examine the results
print("Cluster Centers:")
print(kmeans_result$centers)

print("No of points in each cluster:")
print(kmeans_result$size)