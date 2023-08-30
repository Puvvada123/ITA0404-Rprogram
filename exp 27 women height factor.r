# Load the necessary dataset
data("women")

# Create a factor corresponding to the 'height' variable
height_factor <- factor(women$height)

# Print the levels of the factor
cat("Levels of the height factor:\n")
print(levels(height_factor))

# Print the summary of the factor
cat("\nSummary of the height factor:\n")
print(summary(height_factor))
