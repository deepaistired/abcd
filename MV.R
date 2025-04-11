#Q1. Find the pdf for bivariate normal distribution with mean=0, cov-matrix=[1 0.5 0.5 1] at a point
(1,1).
install.packages("mvtnorm")
library(mvtnorm)
x<-c(1,1)
mean<c(0,0)
sigma<-matrix(c(1,0.5,0.5,1),nrow=2)
pdf<-dmvnorm(x,mean,sigma)
print(pdf)
#Find the pdf for bivariate normal distribution with mean=0, cov-matrix=[1 0 0 1] (diagonal matrix) at a point (1,1).
x<-c(1,1)
mean<-c(0,0)
sigma<-matrix(c(1,0,0,1),nrow=2)
pdf<-dmvnorm(x,mean,sigma)
print(pdf)
#Q3. Check whether the co-variacnce matrix is positive definite matrix.
eigenvalues<-eigen(sigma)$values
if(all(eigenvalues>0)){cat("The covariance matrix is positive")}else{cat("The covariance matrix is not positive definate")}
#Find the pdf for bivariate normal distribution with mean=0, cov-matrix=[1 1 1 1] (diagonal matrix) at a point (1,1).
sigma<-matrix(c(1,1,1,1),nrow=2)
eigenvalues<-eigen(sigma)$values
if(all(eigenvalues>0)){cat("The covariance matrix is positive")}else{cat("The covariance matrix is not positive definate")}
x<-c(1,1)
mean<-c(0,0)
sigma<-matrix(c(1,1,1,1),nrow=2)
pdf<-dmnorm(x,mean,sigma)
print(pdf)
#Find the pdf for bivariate normal distribution with mean=0, cov-matrix=[1 0.5 0.5 1] at a point(1,1) &amp; (2,2).
library(mvtnorm)
mean <- c(0, 0)
sigma <- matrix(c(1, 0.5, 0.5, 1), nrow = 2)
eigenvalues <- eigen(sigma)$values
if (all(eigenvalues > 0)) {
  cat("The covariance matrix is positive definite\n")
} else {
  cat("The covariance matrix is not positive definite\n")
}
points <- rbind(c(1, 1), c(2, 2))
pdf_values <- dmvnorm(points, mean = mean, sigma = sigma)
print(pdf_values)
#Generate 500 random samples from bivariate normal distribution. Mean=[2 5] &amp; covariancematrix=[2 0.8 0.8 1.5].
set.seed(123)
mean<-c(2,5)
sigma<-matrix(c(2,0.8,0.8,1.5),nrow=2)
samples<-rmvnorm(500,mean,sigma)
print(samples)
plot(samples[,1],samples[,2],main="Scatter plot",xlab="S1",ylab="s2",col="red")
#Generate 1000 random samples for mean=(2,3,4) &amp; co variance matrix= [1 0.8 0.5 0.8 1 0.6 0.5 0.5 1]. Also Plot the Scatter plot for it.
install.packages("scatterplot3d")
library(scatterplot3d)
scatterplot3d(samples[,1],samples[,2],samples[,3],main="3D Scatterplot",xlab="s1",ylab="s2",zlab="s3",color="red")
install.packages("ggplot2")
library(ggplot2)
x<-c(1,1)
mean<-c(0,0)
sigma<-matrix(c(1,0.5,0.5,1),nrow=2)
pdf<-dmvnorm(x,mean,sigma)
print(pdf)
x1_vals <-seq(-3,3,by=0.1)
x2_vals <-seq(-3,3,by=0.1)
grid<-expand.grid(X1=x1_vals,X2=x2_vals)
grid$pdf <- dmvnorm(grid,mean=mean,sigma=sigma)
ggplot(grid,aes(x=X1,y=pdf))+ geom_title(aes(fill=pdf),width=0.1,height=0.1)+ scale_fill_virdis_c() + labs(title="Density plot of bivariate normal distribution",x="X1",y="density")+
  theme_minimal()
#
#Q2. Generate 1000 random samples from bivariate normal distribution.mu=2 3 4    co-matrix=1 0.8, 0.5 0.8 1 0.6 0.5 0.6 1  also plot scatterplot for it use scatterplot3d packages. 
# Set seed for reproducibility
set.seed(123)

# Mean vector
mean <- c(2, 3, 4)

# Covariance matrix
sigma <- matrix(c(1, 0.8, 0.5,
                  0.8, 1, 0.6,
                  0.5, 0.6, 1), nrow = 3)
sigma

# Check if covariance matrix is positive definite
eigenvalues <- eigen(sigma)$values
eigenvalues

if (all(eigenvalues > 0)) {
  cat("The covariance matrix is positive definite\n")
} else {
  cat("The covariance matrix is not positive definite\n")
}

# Load required library
library(MASS)  # for mvrnorm()
library(scatterplot3d)  # for 3D plotting

# Generate multivariate normal samples (e.g., 1000 samples)
samples <- MASS::mvrnorm(n = 1000, mu = mean, Sigma = sigma)

# Plot the samples in 3D
scatterplot3d(samples[,1], samples[,2], samples[,3],
              main = "3D Scatter Plot from Multivariate Normal Distribution",
              xlab = "X-axis", ylab = "Y-axis", zlab = "Z-axis",
              color = "blue")

