# Load the necessary dataset
data("airquality")

# Check if the dataset is a data frame
if (is.data.frame(airquality)) {
  cat("airquality is a data frame.\n")
} else {
  cat("airquality is not a data frame.\n")
}

# Order the data frame by the first and second columns
ordered_airquality <- airquality[order(airquality$Month, airquality$Day), ]

# Remove 'Solar.R' and 'Wind' variables
cleaned_airquality <- ordered_airquality[, !(names(ordered_airquality) %in% c("Solar.R", "Wind"))]

# Display the cleaned data frame
print(cleaned_airquality)
