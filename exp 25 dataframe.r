exam_data <- data.frame(
  name = c('Anastasia', 'Dima', 'Katherine', 'James', 'Emily', 'Michael', 'Matthew', 'Laura', 'Kevin', 'Jonas'),
  score = c(12.5, 9, 16.5, 12, 9, 20, 14.5, 13.5, 8, 19),
  attempts = c(1, 3, 2, 3, 2, 3, 1, 1, 2, 1),
  qualify = c('yes', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'no', 'yes')
)
# Extract 3rd and 5th rows with 1st and 3rd columns
extracted_data <- exam_data[c(3, 5), c(1, 3)]
print(extracted_data)
# Add a new column "country" to the data frame
Country <- c("USA", "USA", "USA", "USA", "UK", "USA", "USA", "India", "USA", "USA")
exam_data$country <- Country
print(exam_data)
# Create a new data frame
new_exam_data <- data.frame(
  name = c('Robert', 'Sophia'),
  score = c(10.5, 9),
  attempts = c(1, 3),
  qualify = c('yes', 'no'),
  country = c('USA', 'USA')
)

# Add new row(s) to the existing data frame
exam_data <- rbind(exam_data, new_exam_data)
print(exam_data)

# Add new row(s) to the existing data frame
exam_data <- rbind(exam_data, new_exam_data)
print(exam_data)
# Sort the data frame by name and score
sorted_data <- exam_data[order(exam_data$name, exam_data$score), ]
print(sorted_data)
# Save the data frame to a CSV file
write.csv(exam_data, "exam_data.csv", row.names = FALSE)

# Display the content of the saved file
file_content <- readLines("exam_data.csv")
cat(file_content, sep = "\n")
