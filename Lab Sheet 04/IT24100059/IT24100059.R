setwd("C:\\Users\\IT24100059\\Desktop\\IT24100059")

#part01

data<-read.csv("DATA 3.csv",header=TRUE)

fix(data)

#Renaming column headings
names(data)<-c("Age","Gender","Accommodation")

#converting gender&Accomadation into factors
data$Gender<-factor(data$Gender, c(1,2), c("Male","Female"))
data$Accommodation<-factor(data$Accommodation, c(1,2,3), c("Home","Boarded","Lodging"))
#Attach the file
attach(data)



##Part02
#One-Way Frequency Table
gender.freq<-table(Gender)
gender.freq

acc.freq<-table(Accommodation)
acc.freq

#Bar chart
barplot(gender.freq, main = "Bar Chart for Gender", ylab = "Frequency", xlab="Gender")
abline(h=0)

barplot(acc.freq, main = "Bar Chart for Accommodation", ylab = "Frequency", xlab="Accommodation")
abline(h=0)

#Pie Chart
pie(gender.freq, main = "Pie Chart for Gender")

pie(acc.freq, main = "Pie Chart for Accommodation")

#Histogram
hist(Age,main="Histogram for Age")

#Box plot
boxplot (Age,main="Box Plot for Age",horizontal=TRUE, outline=TRUE)

##Part 03
#Two way Frequency Table
gender_acc.freq <- table(Gender, Accommodation)
gender_acc.freq

# Component / Stacked bar chart
barplot(gender_acc.freq, beside=FALSE, main = "Gender & Accommodation", legend = rownames (gender_acc.freq),
        xlab="Accommodation",ylab="Frequency")
abline(h=0)

# Multiple / Clustered bar chart
barplot (gender_acc.freq, beside = TRUE, main = "Gender & Accommodation", legend = rownames (gender_acc.freq),
         xlab="Accommodation",ylab="Frequency")
abline (h=0)

# Part 04
# Side-by-Side boxplots
boxplot (Age~Gender, main = "Boxplots for Age by Gender", xlab = "Gender", ylab = "Age")
boxplot (Age~Accommodation, outpch = 8, main = "Boxplots for Age by Accommodation", xlab = "Accommodation",
         ylab = "Age", outline=TRUE)

# Part 05
# 2 categorical with a numerical
xtabs (Age~Gender+Accommodation)/gender_acc.freq

detach (data)


#EXERCISE
# 1. Import the dataset
student_data <- read.csv("Exercise.csv")

#View first few rows
head(student_data)

# 2. Summary statistics and histogram for X1 (Age)
summary(student_data$X1)
hist(student_data$X1, 
     main = "Histogram of Age (X1)", 
     xlab = "Age", 
     col = "skyblue", 
     border = "black")

# 3. Frequency table and bar chart for X2 (Gender)
gender_table <- table(student_data$X2)
print(gender_table)

barplot(gender_table, 
        main = "Bar Chart of Gender (X2)", 
        xlab = "Gender", 
        ylab = "Count", 
        col = "lightgreen", 
        border = "black")

# 4. Boxplot to analyze Age (X1) by Accommodation (X3)
boxplot(X1 ~ X3, data = student_data,
        main = "Boxplot of Age by Accommodation Type",
        xlab = "Accommodation Type",
        ylab = "Age",
        col = c("lightblue", "lightpink", "lightgray"))





