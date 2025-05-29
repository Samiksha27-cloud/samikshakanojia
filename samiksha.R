#question 2
# Load the built-in iris dataset
data(iris)

# Minimum of sepal length
min_sepal_length <- min(iris$Sepal.Length)

# Maximum of petal width
max_petal_width <- max(iris$Petal.Width)

# Range of petal length
range_petal_length <- range(iris$Petal.Length)

# Mean of sepal width
mean_sepal_width <- mean(iris$Sepal.Width)

# Median of petal length
median_petal_length <- median(iris$Petal.Length)

# First and third quartile of Sepal.Length (or any column)
quartiles_sepal_length <- quantile(iris$Sepal.Length, probs = c(0.25, 0.75))

# Interquartile Range (IQR) of Petal.Width (or any column)
iqr_petal_width <- IQR(iris$Petal.Width)

# Standard Deviation of Sepal.Length (or any column)
sd_sepal_length <- sd(iris$Sepal.Length)

# Variance of Sepal.Length (or any column)
var_sepal_length <- var(iris$Sepal.Length)

# Print results
cat("Minimum Sepal Length:", min_sepal_length, "\n")
cat("Maximum Petal Width:", max_petal_width, "\n")
cat("Range of Petal Length:", paste(range_petal_length, collapse = " - "), "\n")
cat("Mean Sepal Width:", mean_sepal_width, "\n")
cat("Median Petal Length:", median_petal_length, "\n")
cat("1st and 3rd Quartile of Sepal Length:", paste(quartiles_sepal_length, collapse = ", "), "\n")
cat("IQR of Petal Width:", iqr_petal_width, "\n")
cat("Standard Deviation of Sepal Length:", sd_sepal_length, "\n")
cat("Variance of Sepal Length:", var_sepal_length, "\n")

#questions 3
# Vector
v <- c(1, 2, 3, 4)
print(v)
print(class(v))

# Matrix
m <- matrix(1:9, nrow = 3)
print(m)
print(class(m))

# Array
a <- array(1:12, dim = c(2, 3, 2))
print(a)
print(class(a))

# List
lst <- list(name="John", age=25, scores=c(90, 80, 85))
print(lst)
print(class(lst))

# Data Frame
df <- data.frame(Name=c("A", "B"), Score=c(90, 85))
print(df)
print(class(df))

# Factor
f <- factor(c("low", "medium", "high", "low"))
print(f)
print(class(f))
 
#part2
# Load iris dataset
data(iris)

# Create contingency table: Species vs Petal.Width (converted to factor)
iris$Petal.Width.Factor <- factor(iris$Petal.Width)
table_result <- table(iris$Species, iris$Petal.Width.Factor)
print(table_result)

#part3

# Mosaic Plot
mosaicplot(table_result, main="Mosaic Plot: Species vs Petal Width", color=TRUE)

# Bar Plot
barplot(table_result, beside=TRUE, legend=TRUE, main="Bar Plot: Species vs Petal Width")

# Boxplot
boxplot(Sepal.Length ~ Species, data = iris, main="Boxplot of Sepal Length by Species",
        xlab="Species", ylab="Sepal Length", col=c("lightblue", "lightgreen", "pink"))

#questions 5
# Q5: Simple Linear Regression in R

# 1. Create a data frame with the given data
advertising_spend <- c(20, 25, 30, 35, 40, 45, 50, 55)
sales_revenue <- c(65, 70, 78, 85, 95, 105, 110, 120)

df <- data.frame(AdvertisingSpend = advertising_spend, SalesRevenue = sales_revenue)

# View the data
print(df)

# 2. Fit a Simple Linear Regression model
model <- lm(SalesRevenue ~ AdvertisingSpend, data = df)

# 3. Display the summary of the regression model
summary(model)

# 4. Interpret slope coefficient
cat("Slope (b1) of model: ", coef(model)[2], "\n")

# 5. Predict Sales Revenue when Advertising Spend is ₹60,000
new_data <- data.frame(AdvertisingSpend = 60)
predicted_revenue <- predict(model, newdata = new_data)
cat("Predicted Sales Revenue for ₹60,000 Advertising Spend: ₹", predicted_revenue * 1000, "\n")

#question 1 
# Q1: Working with a List in R

# 1. Create a list named student_info
student_info <- list(
  name = "Rahul Sharma",                     # Student name (character)
  roll_number = 101,                         # Roll number (numeric)
  marks = c(Mathematics = 85, 
            Statistics = 78, 
            Economics = 92)                  # Named vector of marks
)

# 2. Print each component of the list separately
cat("Name:\n")
print(student_info$name)

cat("Roll Number:\n")
print(student_info$roll_number)

cat("Marks:\n")
print(student_info$marks)

# 3. Calculate average marks and add to the list
average_marks <- mean(student_info$marks)
student_info$average <- average_marks

# 4. Check if student passed all subjects (passing = 40)
student_info$passed_all <- all(student_info$marks >= 40)

# 5. Print the updated list
cat("Updated student_info list:\n")
print(student_info)



