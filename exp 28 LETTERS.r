# Set a random seed for reproducibility
set.seed(123)

# Create a factor from a random sample of the LETTERS vector
random_letters <- factor(sample(LETTERS, size = 20, replace = TRUE))

# Print the levels of the factor before extraction
cat("Levels of the factor before extraction:\n")
print(levels(random_letters))

# Extract five levels from the factor
selected_levels <- sample(levels(random_letters), size = 5)

# Print the selected levels
cat("\nSelected levels:\n")
print(selected_levels)
