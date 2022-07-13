library(ggplot2)
library(tidyverse)
library(readxl)
data1 <- read_xlsx("/Users/hp/Desktop/Final_project.xlsx")
#to check null values/missing values
sum(is.na(data1$salary_in_usd))#Gives 0
#Displaying Column Names 
names(data1)
#Displaying Overall Structure of the data set
str(data1)
#No.of rows
nrow(data1)
#No.of columns
ncol(data1)
#we have only selected the summary of column salary_in_usd as it is the only 
#column having numeric value which can be analysed  
summary(data1$salary_in_usd)
#Standard Deviation of the salary in usd
sd(data1$salary_in_usd)
#Getting count of different job titles
table(data1$job_title)
#Finding the skewness of the column salary
skewness(data1$salary_in_usd)#Positively skewed
#IQR
quantile(data1$salary_in_usd)
cat("IQR(inter quartile range) of salary is infered to be(100000-29000):71000")
#employee_residence VS y=experience_level(bar_graph)
#Correct
ggplot(data1, aes(x=employee_residence, y=experience_level,
                  fill=factor(employee_residence)))+
  geom_point(stat = "summary",fun="mean")

#company_location VS y=company_size(geom_point)
ggplot(data1, aes(x=company_location, y=company_size,
                  fill=factor(company_location)))+
            geom_point(stat = "summary",fun="mean")
#salary_in_usd  VS y=job_title
#C
ggplot(data1, aes(x=salary_in_usd  , y=job_title,
                  fill=factor(job_title  )))+
  geom_bar(stat = "summary",fun="mean")

#salary_in_usd  VS y=employee_residence
#C
ggplot(data1, aes(x=salary_in_usd  , y=employee_residence,
                  fill=factor(employee_residence )))+
  geom_bar(stat = "summary",fun="mean")

#salary_in_usd  VS y=experience_level
#C
ggplot(data1, aes(x=salary_in_usd  , y=experience_level,
                  fill=factor(experience_level )))+
  geom_bar(stat = "summary",fun="mean") 

#salary_in_usd VS y=employment_type
#C
ggplot(data1, aes(x=salary_in_usd  , y=employment_type ,
                  fill=factor(employment_type  )))+
  geom_bar(stat = "summary",fun="mean") 

#employee_residence VS y=employment_type
#C
ggplot(data1, aes(x=employee_residence  , y=employment_type ,
                  fill=factor(employee_residence )))+
  geom_point(stat = "summary",fun="mean") 

#employment_type VS y=experience_level
#C
ggplot(data1, aes(x=employment_type  , y=experience_level  ,
                  fill=factor(employment_type)))+

  geom_point(stat = "summary",fun="mean") 

