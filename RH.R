#Generate random numbers for N(0,1).
rnorm(3,0,1)
rnorm(3)
set.seed(0)
rnorm(3)
#Compute pdf of normal distribution at mean=1 and standard deviation = 2 at locations x=-2,0,2.
dnorm(x=c(-2,0,2),1,2)
x<-seq(from=-4,to=4,by=0.05)
norm_dist<-data.frame(x=x,pdf=dnorm(x,mean=1,sd=1))
ggplot2(norm_dist) + geom_line(aes(x=x,y=pdf),color="blue")
#Plot normal distribution N(0,1),N(1,4),N(-1,0.25) in the same graph for pdf.
x<-seq(from=-5,to=5,by=0.05)
n1<-data.frame(dist="N(0,1)",x=x,pdf=dnorm(x,0,1))
n2<-data.frame(dist="N(1,4)",x=x,pdf=dnorm(x,1,2))
n3<-data.frame(dist="N(-1,0.25)",x=x,pdf=dnorm(x,-1,0.5))
norm_dist <-rbind(n1,n2,n3)
ggplot(norm_dist) + geom_line(aes(x=x,y=pdf,color=dist),size=1)
#Plot quantile function for P belongs [0.1,0.8] (seq) for normal distribution with mean=2 and sd=5.
x<-seq(0.1,0.8,by=0.01)
quantiles<-qnorm(x,mean=2,sd=5)
quantile_data<-data.frame(x=x,Quantile=quantiles)
ggplot(quantile_data) + geom_line(aes(x=x,y=Quantile),color="blue",linewidth=1)
#Generate random numbers from N(0,1). Plot histogram for it.Fix reproducibility factor at 123.
set.seed(123)
r<-rnorm(1000)
hist(r,main="Histogram of random numbers",xlab="value",ylab="frequency",col="blue")
#standard normal distibution with histogram
set.seed(123)
r<-rnorm(1000)
hist(r,main="Histogram of random numbers",xlab="value",ylab="frequency",col="blue",probability=TRUE,border=30)
curve(dnorm(x,mean=0,sd=1),col="green",lwd=2,add=TRUE)