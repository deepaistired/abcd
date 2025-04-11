# Install required packages
install.packages("corrplot")

# Load necessary libraries
library(corrplot)

# Step 1: Create data matrix
library(psych)

# Step 1: Data Matrix
data <- data.frame(
  Customer_ID = 1:10,
  PQ = c(8, 7, 9, 6, 8, 7, 9, 6, 7, 8),
  CS = c(7, 8, 9, 6, 7, 6, 9, 5, 7, 8),
  EU = c(9, 8, 8, 7, 7, 8, 9, 6, 7, 8),
  DT = c(6, 7, 8, 5, 7, 6, 8, 5, 6, 7),
  PS = c(8, 7, 9, 6, 7, 6, 9, 6, 7, 8),
  BI = c(7, 6, 8, 5, 7, 6, 9, 5, 6, 8)
)


# Step 2: Compute correlation matrix (excluding customer_ID)
cor_matrix <- cor(data[, -1])

# Step 3: Display correlation matrix
print(cor_matrix)

# Step 4: Graphical representation of correlation matrix
corrplot(cor_matrix)

# Step 4: Checking suitability of correlation matrix
install.packages("psych")
library(psych)
# Perform Bartlett's Test of Sphericity
bartlett_test <- cortest.bartlett(cor_matrix, n = 100)
print(bartlett_test)

# Perform Kaiser-Meyer-Olkin (KMO) Test
kmo <- KMO(cor_matrix)
print(kmo)

# Eigenvalues for factor analysis
eigen_values <- eigen(cor_matrix)$values

# Scree plot for Eigenvalues
plot(eigen_values, type = "b", main = "Scree Plot", ylab = "Eigenvalue", xlab = "Factor Number")

abline(h=1,color="red",lty=2)
# Perform Factor Analysis (FA)
fac <- fa(cor_matrix, nfactors = 2, rotate = "varimax", fm = "ml")

# Print factor loadings
print(fac$loadings)

fa.diagram(fac)


#MT CARS
library(psych)
library(corrplot)

# Load and display the first few rows of the mtcars dataset
datal <- head(mtcars)

# Compute the correlation matrix
cor_matrix <- cor(datal)

# Display the correlation matrix
print(cor_matrix)

corrplot(cor_matrix)

# Load necessary library
library(psych)

# Step 4: Checking suitability of the correlation matrix

# Perform Bartlett's test of sphericity
bartlett_test <- cortest.bartlett(cor_matrix, n = 100)

# Print the result of Bartlett's test
print(bartlett_test)

# Perform Kaiser-Meyer-Olkin (KMO) test
kmo <- KMO(cor_matrix)

# Print the KMO test result
print(kmo)

# Check determinant of correlation matrix
det(cor_matrix)

# Eigenvalues calculation
eigen_values <- eigen(cor_matrix)$values

# Scree plot for eigenvalues
plot(eigen_values, type = "b", main = "Scree Plot",
     ylab = "Eigenvalues", xlab = "Factor Number", lty = 2)
abline(h=1,color='red',lty=2)


# Perform Factor Analysis (FA)
fac <- fa(cor_matrix, nfactors = 2, rotate = "varimax", fm = "ml")

# Print factor loadings
print(fac$loadings)

# Print proportion of variance explained
print(fac$Vaccounted)

> # Select only the variables you're interested in
  > selected_data <- mtcars[, c("mpg", "disp", "wt")]
> 
  > # Compute the correlation matrix
  > cor_matrix <- cor(selected_data)
> 
  > # View it
  > cor_matrix