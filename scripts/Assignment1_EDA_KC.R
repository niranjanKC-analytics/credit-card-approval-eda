#Load ggplot2 and WVPlots libraries
library(ggplot2)
library(WVPlots) 

#set working directory
setwd("~/Desktop/CIS468/Assignment 1 Exploratory Data Analysis /Assignment1")


#Read customer data csv file
credit_card_approval <- read.csv(file="credit_card_approval_cleaned.csv", stringsAsFactors = TRUE)

#Get a listing of variables
names(credit_card_approval)

#Inspect the first 10 records
credit_card_approval[1:10]

# Convert Approved from numeric (0/1) to meaningful labels
credit_card_approval$Approved <- factor(credit_card_approval$Approved,
                                        levels = c(0,1),
                                        labels = c("Not Approved", "Approved"))

#Inspect a summary of all variables
summary(credit_card_approval)

# Basic descriptive statistics for Debt
min(credit_card_approval$Debt)
max(credit_card_approval$Debt)
mean(credit_card_approval$Debt)
median(credit_card_approval$Debt)
var(credit_card_approval$Debt)
sd(credit_card_approval$Debt)

# Calculate the skewness of Debt
debt_skew <- (3*(mean(credit_card_approval$Debt) - median(credit_card_approval$Debt)))/
  sd(credit_card_approval$Debt)
debt_skew

# Basic descriptive statistics for Income
min(credit_card_approval$Income)
max(credit_card_approval$Income)
mean(credit_card_approval$Income)
median(credit_card_approval$Income)
var(credit_card_approval$Income)
sd(credit_card_approval$Income)

# Calculate the skewness of Income
income_skew <- (3*(mean(credit_card_approval$Income) - median(credit_card_approval$Income)))/
  sd(credit_card_approval$Income)
income_skew


# Basic descriptive statistics for Credit Score
min(credit_card_approval$CreditScore)
max(credit_card_approval$CreditScore)
mean(credit_card_approval$CreditScore)
median(credit_card_approval$CreditScore)
var(credit_card_approval$CreditScore)
sd(credit_card_approval$CreditScore)



# Visually checking distributions for a single variable (numeric)
# Histogram for Debt
ggplot(credit_card_approval, aes(x = Debt)) +
  geom_histogram(bins = 30, fill = "lightblue", color = "black") +
  ggtitle("Distribution of Debt") +
  xlab("Debt") +
  ylab("Count")

# Visualize and compare Debt levels between Approved and Not Approved applicants
ggplot(credit_card_approval, aes(x = Approved, y = Debt, fill = Approved)) +
  geom_boxplot() +
  ggtitle("Debt Distribution by Approval Status") +
  xlab("Approval Status") +
  ylab("Debt")


# Histogram for Income
ggplot(credit_card_approval, aes(x = Income)) +
  geom_histogram(bins = 30, fill = "orange", color = "black") +
  ggtitle("Distribution of Income") +
  xlab("Income") +
  ylab("Count")

# Histogram for Credit Score
ggplot(credit_card_approval, aes(x = CreditScore)) +
  geom_histogram(bins = 30, fill = "purple", color = "black") +
  ggtitle("Distribution of Credit Score") +
  xlab("Credit Score") +
  ylab("Count")


# Visually checking distributions for a single variable (categorical)
# Bar plot for Approval Status
ggplot(credit_card_approval, aes(x = Approved)) +
  geom_bar(fill = "steelblue") +
  ggtitle("Credit Card Approval Outcomes") +
  xlab("Approval Status") +
  ylab("Count")

# Bar plot for Industry
ggplot(credit_card_approval, aes(x = Industry)) +
  geom_bar(fill = "darkred") +
  ggtitle("Distribution of Industry") +
  xlab("Industry") +
  ylab("Count") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))


# Exploring relationships between numeric variables with a scatterplot matrix
# Scatter plot of Income vs Debt
ggplot(credit_card_approval, aes(x = Income, y = Debt)) +
  geom_point(color = "blue") +
  geom_smooth(method = "lm", color = "red") +
  ggtitle("Debt as a Function of Income") +
  xlab("Income") +
  ylab("Debt")

cor(credit_card_approval$Income,
    credit_card_approval$Debt)


#Exploring relationships between categorical vs numeric variables
#Side-by-side bar chart of Debt vs Approved
ggplot(credit_card_approval, aes(x = Approved, y = Debt, fill = Approved)) +
  geom_boxplot() +
  ggtitle("Debt Distribution by Approval Status") +
  xlab("Approval Status") +
  ylab("Debt")



#Exploring relationships between categorical variables
#Side-by-side bar chart of Industry vs Approved
ggplot(credit_card_approval, aes(x = Industry, fill = Approved)) +
  geom_bar(position = "dodge") +
  ggtitle("Approval Status by Industry") +
  xlab("Industry") +
  ylab("Count") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))






