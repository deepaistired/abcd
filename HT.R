
#hotelling t square
data<-read_csv(file.choose(),header=TRUE)
data
x1=data$Length
x2=data$Width
x3=data$Height
x=cbind(x1,x2,x3)
x
install.packages("mvnormtest")
library(mvnormtest)
mshapiro.test(t(x))
A<-var(x)
A
n=nrow(x)
p=ncol(x)
x.bar=apply(x,MARGIN=2,FUN=mean)
x.bar
Tp.2=as.numeric(n*(t((x.bar-mu))%*%solve(A)%*%(x.bar-mu)))
Tp.2
Test.statistic=(Tp.2*(n-p))/p*(n-1)
Test.statistic
qf(0.95,p,n-p)
#Question 2) 
#CHECK WHETHER MEAN OF A MULTIVARIATE DATASET (IN IRIS PACKAGE) DIFFERNS FROM HYPOTHETICAL MEAN VECTOR 
#Mu = 5.8,3.1,3.7,1.2 
head(iris)
summary(iris)
x1<-iris$Sepal.Length
x2<-iris$Sepal.Width
x3<-iris$Petal.Length
x4<-iris$Petal.Width
x<-cbind(x1,x2,x3,x4)
library(mvnormtest)
mshapiro.test(t(x))
A<-var(x)
A
n<-nrow(iris)
p<-ncol(iris[,1:4])
x.bar=apply(x,MARGIN=2,FUN=mean)
x.bar
mu<-c(5.8,3.1,3.7,1.2)
Tp.2<-as.numeric(n*t(x.bar-mu) %*% solve(A) %*% (x.bar-mu))
Tp.2
Test.statistic=(Tp.2*(n-p))/(p*(n-1))
Test.statistic
qf(0.95,p,n-p)