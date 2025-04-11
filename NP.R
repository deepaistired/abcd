#Compute the pdf at location 0 of N(1,4).(mean,variance)
dnorm(0,1,2)
#Compute pdf at location 0 of N(-1,0.25).
dnorm(0,-1,0.5)
#standardnormal distribution
dnorm(0,0,1)
#Compute the pdf at a location 0 for 3 different normal distributions N(1,4),N(-1,0.25),N(0,1)
dnorm(0,mean=c(1,-1,0),sd=c(2,0.5,1))
#For N(3,4) find pdf at three different locations. -3,2,5.
dnorm(x=c(-3,2,5),3,2)
#Give the graphical representation of N(0,1). (Symmetric )
install.packages("ggplot2")
library(ggplot2)
x<-seq(from=-5,to=5,by=0.05)
norm_dist<-data.frame(x=x,pdf=dnorm(x))
ggplot(norm_dist) + geom_line(aes(x=x,y=pdf),color="red")
#cdf
pnorm(0,mean=1,sd=2)
#cdf of standard normal distribution
pnorm(0)
#graphical representation
x<- seq(from=-5,to=5,by=0.05)
norm_dist<- data.frame(x=x,cdf=pnorm(x,1,2))
ggplot(norm_dist) + geom_line(aes(x=x,y=cdf),color="red")
#for standard normal distribution
norm_dist<-data.frame(x=x,cdf=pnorm(x))
#quantile (median)
qnorm(0.5,1,2)
#median of standard normal distribution
qnorm(0.5)
#graphical representation of qnorm
p<-seq(from=0,to=1,by=0.01)
norm_dist<-data.frame(p=p,quantile=qnorm(p,mean=1,sd=2))
ggplot(norm_dist) + geom_line(aes(x=quantile,y=p),color="blue")
#graphical rep of standard normal deviation
p<-seq(from=0,to=1,by=0.01)
norm_dist<-data.frame(p=p,quantile=qnorm(p,mean=1,sd=2))
ggplot(norm_dist) + geom_line(aes(x=quantile,y=p),color="blue")
#graphical representation of standard normal deviation via qnorm
norm_dist<-data.frame(x=x,quantile=qnorm(x,mean=0,sd=0.05))
ggplot2(norm_dist) + geom_line(aes(x=quantile,y=p),color="blue")
