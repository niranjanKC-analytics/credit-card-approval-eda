# 💳 Credit Card Approval – Exploratory Data Analysis (EDA)

## 📌 Project Overview
This project presents an exploratory data analysis of a credit card approval dataset, completed as part of **CIS 468 – Applied Data Science and Machine Learning** at Towson University.

The goal of this analysis is to understand the structure of the dataset, evaluate the distribution of key financial variables, and explore relationships between applicant characteristics and credit approval outcomes.

---

## 🎯 Objectives
- Analyze the distribution of financial variables such as **Debt, Income, and Credit Score**
- Identify **skewness, outliers, and variability** in the dataset
- Explore relationships between numeric variables and approval outcomes
- Examine how **categorical factors (e.g., Industry)** relate to approval decisions
- Provide insights to guide future predictive modeling

---

## 📊 Dataset Information
- **Source:** Kaggle – Credit Card Approval Dataset  
- **Observations:** 690 applications  
- **Attributes:** 16 variables  
- **Target Variable:** Approved (Approved / Not Approved)

### Key Variables Used
| Variable        | Type        | Description |
|----------------|------------|------------|
| Debt           | Numeric    | Applicant's existing debt |
| Income         | Numeric    | Reported income level |
| Credit Score   | Numeric    | Creditworthiness indicator |
| Industry       | Categorical| Applicant's industry sector |
| Approved       | Categorical| Approval outcome |

---

## 🛠️ Methods
The analysis was conducted using **R (ggplot2)** and focused on descriptive and visual exploration.

### Techniques Used
- Descriptive statistics (mean, median, variance, skewness)
- Distribution analysis using histograms and boxplots
- Correlation analysis (Income vs Debt)
- Scatter plots with regression line
- Group comparisons:
  - Boxplots (Debt vs Approval)
  - Bar charts (Industry vs Approval)

### Analytical Decisions
- **Boxplots were preferred over Z-score methods** due to skewed distributions  
- **Q-Q plots were considered but not used**, as histograms already revealed strong non-normality  
- Correlation and regression were interpreted cautiously due to **outliers and skewness**

---

## 📈 Key Findings

### 🔹 Distribution Insights
- Financial variables (**Debt, Income, Credit Score**) are **heavily right-skewed**
- Extreme values significantly influence mean values
- Median is a more reliable measure of central tendency

### 🔹 Relationships
- **Income vs Debt:** Weak correlation (r ≈ 0.12)
- **Debt vs Approval:** Significant overlap between approved and denied groups
- **Industry vs Approval:** Approval rates vary across industries

### 🔹 Interpretation
- No single variable strongly predicts approval
- Credit decisions appear to be **multi-factorial**

---

## ⚠️ Limitations
- Strong skewness violates normality assumptions
- Extreme outliers influence statistical measures
- Some variables show **zero-inflation (e.g., Credit Score)**
- Analysis is **descriptive**, not predictive

---

## 🚀 Future Work
- Apply transformations to handle skewness
- Build predictive models:
  - Logistic Regression
  - Decision Trees
- Explore fairness and bias in approval decisions

---

## 📂 Project Structure
│── data/
│── scripts/
│── visualizations/
│── presentation/
│ └── CIS468_EDA_Presentation.pptx
│── README.md

---

---

## 📊 Presentation
A full presentation summarizing this analysis is included:

➡️ [Download Presentation Slides](./presentation/CIS468_EDA_Presentation.pptx)

---

## 🧰 Tools & Technologies
- R
- ggplot2
- Data Visualization
- Statistical Analysis

---

## 📚 References
- Kaggle. *Credit Card Approval Dataset*  
  https://www.kaggle.com/datasets/samuelcortinhas/credit-card-approval-clean-data  
- CIS 468 Applied Data Minning and Visual Analytics – Towson University

---

## 👤 Author
**Niranjan K C**  
Information Technology Student – Towson University  
Aspiring Data Analyst / Data Scientist
