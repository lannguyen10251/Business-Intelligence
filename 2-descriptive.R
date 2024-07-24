#install packages
install.packages("tidyverse")
library("tidyverse")
install.packages("ggplot2")
library("ggplot2")
library(dplyr)
  install.packages("ggplot2")
library(ggplot2)

#import and view data (file csv)
library(readxl) #install package for file excel
train <- read.csv("E:/UEH/BI/Finance Loan approval Prediction Data/train.csv")
View(train)

# Install and load the 'forcats' package
  install.packages("forcats")
library(forcats)
# Cài đặt và tải gói cần thiết
install.packages("dplyr")
library(dplyr)

#BarChart
train %>% 
  # drop_na(Gender) %>% 
  # drop_na() %>% 
  # ggplot(aes(x = Gender)) +
  ggplot(aes(fct_infreq(Gender))) +
  geom_bar(fill = "#dc2c7e") +
  #coord_flip() +
  theme_bw() +
  labs(x = "Gender",
       y = NULL,
       title = "Number of observations per Gender")

# Horizontal bar chart
train %>%
  ggplot(aes(x = Dependents)) +
  geom_bar(fill = "#e74c3c") +
  labs(title = "Horizontal Bar Chart of Dependents",
       x = "Count",
       y = "Dependents") +
  theme_minimal() +
  coord_flip()


library(ggplot2)
library(dplyr)
library(forcats)


# Pie chart
train %>%
  ggplot(aes(x = "", fill = Education)) +
  geom_bar(width = 1, stat = "count") +
  coord_polar("y") +
  labs(title = "Pie Chart of Education") +
  theme_minimal() +
  theme(axis.text = element_blank(),
        axis.title = element_blank(),
        panel.grid = element_blank())

# Histogram
train %>%
  ggplot(aes(ApplicantIncome)) +
  geom_histogram(binwidth = 300000, fill = "#dc2c7e") +
  theme_bw() +
  labs(x = "ApplicantIncome",
       y = NULL,
       title = "Histogram of ApplicantIncome")

#Scatter Chart
train %>% 
  # filter(bodywt <2) %>%
  ggplot(aes(LoanAmount, ApplicantIncome)) +
  geom_point(aes(color = LoanAmount,
                 size = ApplicantIncome)) +
  geom_smooth(method = lm,
              se = F) +
  labs(x = "LoanAmount",
       y = "ApplicantIncome",
       title = "LoanAmount - ApplicantIncome") +
  theme_minimal()
