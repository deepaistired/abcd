

#manually perform SVD
A<-matrix(c(4,-5,-1,7,-2,3,-1,4,-3,8,2,6),nrow=4,ncol=3,byrow = TRUE)
A
AAT<-A %*% t(A)
e1<-eigen(AAT)
U<-e1$vectors[,1:3]
U
ATA<- t(A) %*% A
ATA
e2<-eigen(ATA)
V<-e2$vectors
V
r<-sqrt(e1$values)
r1<-diag(r)
r1
SVD <- U %*% r1 %*% t(V)
svd_A <- svd(A)
U <- svd_A$u
D <- diag(svd_A$d)  # Sigma
V <- svd_A$v


