#Create a distance matrix in cluster analysis using Euclidean distance. 
data <- matrix(c(0.4, 0.53, 0.22, 0.38, 0.35, 0.32, 0.26, 0.19, 0.08, 0.41, 0.45, 0.3),  nrow = 6, byrow = TRUE)
colnames(data) <- c("X", "Y")
print("Dataset:")
print(data)
# Compute the Euclidean distance matrix
dist_matrix <- dist(data, method = "euclidean")
print("Euclidean Distance Matrix:")
print(dist_matrix)
#for manhattan
dist_matrix <- dist(data, method = "manhattan")
#for maximum
dist_matrix <- dist(data, method = "maximum")
#for binary
dist_matrix <- dist(data, method = "binary")
#for minkowski
dist_matrix <- dist(data, method = "minkowski")
#heatmaps of distance matrix
data <- matrix(c(0.4, 0.53, 0.22, 0.38, 0.35, 0.32, 0.26, 0.19, 0.08, 0.41, 0.45, 0.3), nrow=6, byrow=TRUE)
distmat <- dist(data)
# Convert matrix into full matrix form
dist_matrix_matrix <- as.matrix(distmat)
# Convert matrix into a heatmap
heatmap(dist_matrix_matrix)
#hac single link
# Perform HAC using single linkage method
data <- matrix(c(0.4, 0.53, 0.22, 0.38, 0.35, 0.32, 0.26, 0.19, 0.08, 0.41, 0.45, 0.3),  nrow = 6, byrow = TRUE)
dist_matrix <- dist(data, method = "euclidean")
hc_single <- hclust(dist_matrix, method = "single")
print("Hierarchical Clustering (Single Linkage):")
print(hc_single)
# Plot the dendrogram
plot(hc_single, main = "Hierarchical Clustering - Single Linkage", xlab = "Observations", ylab = "Height")
#average linkage
hc_avg <- hclust(dist_matrix, method = "average")
print(hc_avg)
#ward linkage
hc_ward <- hclust(dist_matrix, method = "ward.D2")
print(hc_ward)
hc_comp <- hclust(dist_matrix, method = "complete")
print(hc_complete)