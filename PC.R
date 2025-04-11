#pca on iris dataset
head(iris)
summary(iris)
scale(iris[,1:4])
info<-scale(iris[,1:4])
cm<-cov(info)
eigen_v<-eigen(cm)
eigen_v
sorted<-order(eigen_v$values,decreasing=TRUE)
sorted
sortEVa<-eigen_v$values[sorted]
sortEVa
sortEvec<-eigen_v$vectors[,sorted]
sortEvec
p_comp<-2
selcomp<-sortEvec[,1:p_comp]
selcomp
redd<-info%*%selcomp
redd
plot(eigen_v$values,type="o",main="Plot1",xlab="Principal component",ylab="Eigenvalue")
plot(redd,col=iris$Species,pch=16,main="PCA visualisation")

#on different data
info<-scale(sdata[,1:3])
info
cm<-cov(info)
eigen_v<-eigen(cm)
eigen_v
sorted<-order(eigen_v$values,decreasing=TRUE)
sortEVa<-eigen_v$values[sorted]
sortEVa
sortEvec<-eigen_v$vectors[,sorted]
sortEvec
p_comp<-1
selcomp<-sortEvec[,1:p_comp]
selcomp
redd<-info%*%selcomp
redd
eigen_v$values/sum(eigen_v$values)
plot(eigen_v$values,type="o",main="Plot1",xlab="Principal component",ylab="Eigenvalue")
