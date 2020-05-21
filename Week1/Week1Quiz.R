#Melvin Lopez
#Coursera - R Programming
#Week 1 Quiz

#1 university of aukland
#2 freedone to restrict accesss
#2 freedome to prevent users
#2    missing something
#3 atomic data types - ('atomic') vector types: logical, integer, real, complex, string (or character) and raw


#Question 4
#If I execute the expression x <- 4L in R, what is the class of the 
#object `x' as determined by the `class()' function?
#Assign variable
q4 <-4L
#Identify class as integer
class(q4)


#Question 5
#What is the class of the object defined by the expression 
#x <- c(4, "a", TRUE)?
#Assign vector to variable
x <- c(4, "a", TRUE)
#Identify class as character (lowest common denominator)
class(x)


#Question 6
#If I have two vectors x <- c(1,3, 5) and y <- c(3, 2, 10), 
#what is produced by the expression cbind(x, y)?
#Assign vector x
x <- c(1, 3, 5)
#Assign vector y
y <- c(3, 2, 10)
#Bind vectors by columns to make 3x2 matrix
cbind(x,y)


#Question 8 
#Suppose I have a list defined as x <- list(2, "a", "b", TRUE).
#What does x[[1]] give me? Select all that apply.
#Create list of values
x <-list(2, "a", "b", TRUE)
#Subset list and return value of second element in list in variable
x<-x[[1]]
#Display result
x
#Display length of vector
length(x)
#Display class of vector
class(x)


#Question 9
#Suppose I have a vector x <- 1:4 and 
#y <- 2. What is produced by the expression x + y?
x <- 1:4
y <- 2 
x + y
#Display length of vector
length(x + y)
#Display class of vector
class(x + y)


#Question 10
#Suppose I have a vector x <- c(17, 14, 4, 5, 13, 12, 10) and I
#want to set all elements of this vector that are greater than
#10 to be equal to 4. What R code achieves this? Select all 
#that apply.
#Create vector of values
x <- c(17, 14, 4, 5, 13, 12, 10)
#Replace elements where the value is greater than 10
x[x > 10]<-4
#Display result
x
#Create vector of values
x <- c(17, 14, 4, 5, 13, 12, 10)
#Replace elements where the value equal to or greater than 12
x[x >=12]<-4
x
#The result of all will be equal


#Question 11
#In the dataset provided for this Quiz, 
#what are the column names of the dataset? 
#Read in the hw1_data.csv file
df <- read.csv("hw1_data.csv")
#Retrieve column names from data frame
names(df)


#Question 12
#Extract the first 2 rows of the data frame and print them to the
#console. What does the output look like?
#Read in the hw1_data.csv file
df <- read.csv("hw1_data.csv")
#Extract first two rows
head(df,2)


#Question 13
#How many observations (i.e. rows) are in this data frame?
#Read in the hw1_data.csv file
df <- read.csv("hw1_data.csv")
#Count the number of observations in the data frame
nrow(df)


#Question 14
#What is the value of Ozone in the 47th row?
#Read in the hw1_data.csv file
df <- read.csv("hw1_data.csv")
#Return the last two rows in the dataset
tail(df,2)


#Question 15
#Read in the hw1_data.csv file
df <- read.csv("hw1_data.csv")
#Return the value of Ozone in the 47th row
df[47,"Ozone"]


#Question 16
#How many missing values are in the Ozone column 
#of this data frame?
#Read in the hw1_data.csv file
df <- read.csv("hw1_data.csv")
#Subset data frame to one vector of Ozone values
df <-df$Ozone
#Use is.na function to convert values to logical values
#Here is.na = TRUE is a NA value
df <-is.na(df)
#Subset data frame to vector of TRUE values
df <-df[df==TRUE]
#Display the legnth of the vector
length(df)

#Question 17
# What is the mean of the Ozone column in this dataset? 
# Exclude missing values (coded as NA) from this calculation.
# Read in the hw1_data.csv file
df <- read.csv("hw1_data.csv")
#Subset data frame to one vector of Ozone values
df <-df$Ozone
#create logical map of NA values and assign to variable bad
bad <-is.na(df)
#Subset data frame using "!" (opposite) with non NA values
df<-df [!bad]
#Calculate the mean of the data frame
mean(df)


#Question 18
#Extract the subset of rows of the data frame where Ozone values are 
#above 31 and Temp values are above 90. What is the mean of Solar.R 
#in this subset?
#Read in the hw1_data.csv file
df <- read.csv("hw1_data.csv")
#clean the data using complete cases
good <-complete.cases(df)
#create a new data frame with good data 
df <-df[good,]
#Subset the data set with Ozone > 31 and Temp >90
df <-df[with(df,Ozone >31 & Temp >90),]
#Create list of Solar.R values
df<-list(df$Solar.R)
#Calculate the mean of the Solar.R column
sapply(df,mean)


#Question 19
#What is the mean of "Temp" when "Month" is equal to 6? 
df <- read.csv("hw1_data.csv")
#Subset the data frame with the Month = 6
df <- df[df$Month == 6,]
#Subset the data frame to return a data frame of Temp column values
df <-df$Temp
#Take the mean of the data frame without a list
mean(df)


#Question 20
#What was the maximum ozone value in the month of 
#May (i.e. Month is equal to 5)?
df <- read.csv("hw1_data.csv")
#clean the data using complete cases
good <-complete.cases(df)
#create a new data frame with good data 
df <-df[good,]
#Subset the data frame with the Month = 5
df <- df[df$Month == 5,]
#Subset the data frame to return a data frame of Ozone column values
df <-df$Ozone
#Take the mean of the data frame without a list
max(df)


x <- c(17, 14, 4, 5, 13, 12, 10)
#Replace elements where the value is greater than 10
x[x == 10]<-4
x

