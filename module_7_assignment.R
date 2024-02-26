# Create a sample dataset
sample_data <- data.frame(
  Student_ID = 1:6,
  Name = c("Miyeon", "Minnie", "Yuqi", "Soyeon", "Shuhua", "Soojin"),
  Age = c(27, 26, 24, 25, 24, 25),
  Score = c(85, 92, 78, 88, 90, 82)
)




# Create an S3 object
s3 <- list(
  name = "Isabelle",
  age = 22,
  GPA = 3.5
)

# Display the S3 object
print(s3)




# Define an S4 class
setClass(
  "student",
  slots = c(
    name = "character",
    age = "numeric",
    GPA = "numeric"
  )
)

# Create an S4 object
s4 <- new("student", name = "Isabelle", age = 22, GPA = 3.5)

# Display the S4 object
print(s4)



# Question 1
# Check the class of an object
class(sample_data)  # Should return "data.frame" (S3)
class(s3)        # Should return NULL or "list" (S3)
class(s4)        # Should return "student" (S4)



# Question 2
# Check the base type of an object
typeof(sample_data)  # Should return "list" (S3)
typeof(s3)         # Should return "list" (S3)
class(s4)          # Should return "student" (S4)
