#install packages
install.packages("tidyverse")
library("tidyverse")

#import and view data (file .csv)
Thongke <- read.csv("E:/UEH/BI/Dataset_raw.csv")
View(Thongke)

#Statistic using R
mean(train$ApplicantIncome)
median(train$ApplicantIncome)
mode(train$Property_Area)
min(train$ApplicantIncome)
max(train$ApplicantIncome)
var(train$ApplicantIncome)

summary(train$ApplicantIncome)

summary(Thongke)

library(dplyr)
train %>% 
  select(Dependents, Self_Employed, Property_Area, ApplicantIncome, Gender) %>%
  filter(Gender == 'Male') %>% 
  summary

View(train)

# Create a summary table by Gender
ThongKe %>% 
  group_by(Response) %>% 
  summarise(  Lower = min(ApplicantIncome),
              Average = mean(ApplicantIncome),
              Upper = max(ApplicantIncome),
              Range = max(ApplicantIncome) - min(ApplicantIncome)) %>%
  arrange(Average) %>%
  View()
