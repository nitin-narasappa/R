
# Dataframe is one of the most useful structures of R.

names <- c("John", "Tom", "Bob", "Tim")
ids <- 5:8
subjects <- c("English", "Maths", "Science", "Arts")
marks <- c(80, 75, 85, NA)

myDataframe <- data.frame(names, ids, subjects, marks)

# Print the structure of dataframe.
> myDataframe
  names ids subjects marks
1  John   5  English    80
2   Tom   6    Maths    75
3   Bob   7  Science    85
4   Tim   8     Arts    NA

# Maximum marks in the data frame, this will result in NA since one of the value is NA
max(myDataframe$marks)

# To get exclude NA from max function
nomissing <- complete.cases(myDataframe)  # define no NA function.
newDataframe <- myDataframe[nomissing, ]
max(newDataframe$marks)

# Summary of the dataframe
summary(myDataframe)

# mean of column "ids" of the dataframe
mean(myDataframe[["ids"]])	              

# sort the data column in decreasing order.
sort(myDataframe$marks, decreasing = TRUE)

# rows 2 -3 of the dataframe
myDataframe[2:3, ]

 # value of subjects at row #3
myDataframe[3, "subjects"]       


