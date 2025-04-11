

library(caTools)
# Data creation
data <- data.frame(
  Years_Exp = c(1.1, 1.3, 1.5, 2.0, 2.2, 2.9, 3.0, 3.2, 3.2, 3.7),
  Salary = c(39343.00, 46205.00, 37731.00, 43525.00,
             39891.00, 56642.00, 60150.00, 54445.00, 64445.00, 57189.00)
)

# Scatter plot
plot(data$Years_Exp, data$Salary,
     xlab = "Years Experienced",
     ylab = "Salary",
     main = "Scatter Plot of Years Experienced vs Salary")

# Linear regression
linregress <- lm(Salary ~ Years_Exp, data = data)
abline(linregress, col = "pink")
summary(linregress)

# Predicting new values
new_data <- data.frame(Years_Exp = c(4.0, 4.5, 5.0))
predict(linregress, newdata = new_data)

# Load mtcars and preview
head(mtcars)

# Linear regression
reg1 <- lm(wt ~ mpg, data = mtcars)
summary(reg1)

# Plot
plot(mtcars$mpg, mtcars$wt,
     xlab = "Miles per Gallon",
     ylab = "Weight of Cars",
     main = "MTCars Scatter Plot")
abline(reg1, col = "blue")

# Data creation
df <- data.frame(
  Shipment = 1:20,
  Distance = c(67, 59, 50, 58, 45, 63, 58, 60, 63, 62,
               51, 48, 63, 64, 56, 49, 55, 57, 59, 59),
  Nof_items = c(32, 12, 32, 31, 20, 19, 28, 27, 30, 25,
                20, 27, 27, 10, 27, 23, 31, 24, 26, 12),
  Cost = c(28, 30, 16, 24, 14, 37, 32, 36, 29, 30,
           17, 18, 45, 48, 41, 20, 26, 27, 34, 50)
)

# Regression
reg2 <- lm(Cost ~ Distance + Nof_items, data = df)
summary(reg2)

# Diagnostic plots
par(mfrow = c(2, 2))
plot(reg2)

# Predict new values
new_data <- data.frame(Distance = c(50, 58, 64), Nof_items = c(32, 31, 10))
predict(reg2, newdata = new_data)

new_data<-data.frame(Distance=50,Nof_items=32)
predict(reg2,newdata = new_data)

# Regression
reg3 <- lm(mpg ~ wt + hp, data = mtcars)
summary(reg3)

# Diagnostic plots
par(mfrow = c(2, 2))
plot(reg3)

# Prediction
new_data1 <- data.frame(wt = 2.620, hp = 110)
predict(reg3, newdata = new_data1)

new_data2 <- data.frame(wt = c(2.875, 3.215, 3.460), hp = c(110, 110, 105))
predict(reg3, newdata = new_data2)

par(mfrow = c(2, 2))
plot(mtcars$mpg)
plot(mtcars$wt)
plot(mtcars$hp)
plot(mtcars$disp)

#incase
dev.off()   # Closes the current graphics device
windows()   # (on Windows only)
par(mfrow = c(1, 1))  # Reset plot layout to 1 plot per window
plot(reg3)  # or whatever plot you wanted

