sdata <- data.frame(x1=c(2,3,3,5,6,8,9,10,11,12),x2=c(1,2,4,5,5,7,8,9,10,12),class=as.factor(c("A","A","A","A","A","B","B","B","B","B")))
sdata
plot(sdata)
install.packages("ggplot2")
library(ggplot2)
ggplot(sdata, aes(x = x1, y = x2, color = class)) +
  +     geom_point(size = 4) +
  +     labs(title = "Original", x = "Feature x1", y = "Feature x2") +
  +     theme_minimal()
install.packages("MASS")
library(MASS)
ldam <-lda(class~x1+x2,data=sdata) 
ldam
ldav<-predict(ldam)
ldav
ldaf <- data.frame(LD1=ldav$x,class=sdata$class)
ldaf
ggplot(ldaf,aes(x=LD1,y=rep(0,length(LD1)),color=class))+ geom_point(size=5) + labs(title="LDA",x="feature of x1",y="feature of x2") + theme_minimal()


#q2
# Load ggplot2 library
library(ggplot2)

# Corrected Data Frame
sdata <- data.frame(
  x1 = c(9, 8, 3, 1, 10),  # Example values for x1
  x2 = c(2, 5, 7, 4, 9),   # Example values for x2
  class = as.factor(c("no", "some", "some", "some", "much"))  # Corrected factor syntax
)
sdata
plot(sdata)

# Plot using ggplot2
ggplot(sdata, aes(x = x1, y = x2, color = class)) +
  geom_point(size = 4) +
  labs(title = "Original", x = "Feature x1", y = "Feature x2") +
  theme_minimal()

install.packages("MASS")
library(MASS)
ldam <- lda(class ~ x1 + x2, data = sdata)
ldam
ldav<- predict(ldam)
ldav
ldaf <- data.frame(
  LD1 = lda_values[, 1],  # First LDA component
  LD2 = lda_values[, 2],  # Second LDA component
  class = sdata$class      # Class labels from original dataset
)

# Plot LDA Results
ggplot(ldaf, aes(x = LD1, y = LD2, color = class)) +
  geom_point(size = 4) +
  labs(title = "LDA", x = "Feature of x1", y = "Feature of x2") +
  theme_minimal()

#BOX PLOT

install.packages("biotools")
library(biotools)
result <- boxM(sdata[,1:2],sdata$class)
result

#iris dataset
# Load Required Library
library(MASS)

# Subset iris dataset to include only "setosa" and "versicolor"
iris_subset <- subset(iris, Species %in% c("setosa", "versicolor"))

# Ensure Species is a Factor (sometimes it retains old levels)
iris_subset$Species <- factor(iris_subset$Species)

# Perform LDA
lda_model <- lda(Species ~ Sepal.Length + Sepal.Width, data = iris_subset)

# Print LDA Model
print(lda_model)

# Load Required Libraries
library(MASS)
library(ggplot2)

# Perform LDA Predictions
lda_predictions <- predict(lda_model)

# Create Data Frame for LDA Results
lda_results <- data.frame(
  LD1 = lda_predictions$x[, 1],  # First Linear Discriminant
  class = iris_subset$Species    # Actual class labels
)

# Plot Original Data
ggplot(iris_subset, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) +
  geom_point(size = 4) +
  labs(
    title = "Original Data (Setosa & Versicolor)", 
    x = "Sepal Length", 
    y = "Sepal Width"
  ) +
  theme_minimal()

# Plot LDA Results
ggplot(lda_results, aes(x = LD1, y = rep(0, length(LD1)), color = class)) +
  geom_point(size = 4) +
  labs(
    title = "LDA (Setosa & Versicolor)", 
    x = "Linear Discriminant 1", 
    y = "Projection"
  ) +
  theme_minimal()
#for iris dataste
iris
ldam<-lda(Species~Sepal.Length+Sepal.Width,data=iris)
ldam
ldav<-predict(ldam)
ldav
ldaf<-data.frame(LD1=ldav$x[,1],class=iris$Species)
ldaf
> ggplot(ldaf, aes(x = LD1, y = rep(0, length(LD1)), color = class)) +
  +     geom_point(size = 4) +
  +     theme_minimal()
> 