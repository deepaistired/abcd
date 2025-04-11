
#apriori
install.packages("arules")
library(arules)
install.packages("arulesViz")
library(arulesviz)
data("Groceries")
summary(Groceries)
Groceries@itemInfo[1:20,]
rules<-apriori(Groceries,parameter=list(supp=0.01,conf=0.2))
inspect(rules[1:10])
install.packages("RColorBrewer")
library(RColorBrewer)
arules::itemFrequencyPlot(Groceries,topN=20,col=brewer.pal(8,"Pastel1"),main="Item Frequency Plot",type="relative",ylab="item frequency")
#incase
dev.off()
windows()
par(mfrow=c(1,1))
arules::itemFrequencyPlot(Groceries,topN=20,col=brewer.pal(8,"Pastel1"),main="Item Frequency Plot",type="relative",ylab="item frequency")

#Generate association rules using apriori algorithm for the following given data with minimum supoort 30 percent and minimum confidence 70% 
0.0 
item 
0.2 
uency 
0.4 
(relative) 
0.6 
0.8 
data=list(c("milk","egg","bread","butter"),
          c("milk","butter","egg","ketchup"),
          c("bread", "butter","ketchup"),
          c("milk","bread","butter"),
          c("bread","butter","cookies"),
          c("milk","bread","butter","cookies"),
          c("milk","cookies"),c("milk","bread","butter"),
          c("bread","butter","egg","cookies"),
          c("milk","butter","bread"),
          c("milk","bread","butter"),c("milk","bread","cookies","ketchup")) 
data
trans<-as(data,"transactions")
trans
summary(data)
rules<-apriori(trans,parameter=list(supp=0.33,conf=0.50))
rules
inspect(rules)
#default plot layout
par(mfrow=c(1,1))
par(mfrow=c(4,4,2,2)) #adjust margins(bottom,left,top,right)
arules::itemFrequencyPlot(trans,topN=20,col=brewer.pal(6,"Pastel1"),main="Item Frequency Plot",type="relative")

#example 3 for adult dataset 
data("Adult")
Adult@itemInfo[1:20,]
class(Adult)
rules<-apriori(Adult,parameter=list(supp=0.3,conf=0.50))
inspect(rules)
arules::itemFrequencyPlot(Adult,topN=20,col=brewer.pal(8,"Pastel2"),main="Item Frequency Plot",type="relative")