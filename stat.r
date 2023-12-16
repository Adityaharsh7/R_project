library(tidyr)
library(dplyr)
xyz <- read.csv("report_2018-2019.csv", header = TRUE, sep = ",")
xyz

#step1 filter data
FilterData <- xyz %>%
  filter(Year == 2018)
print(FilterData)

#step2 print total rows in dataset
nrow(xyz)

#step3 print total columns in dataset
ncol(xyz)

#step4 print dimensions of a dataset.
dim(xyz)

#step5 print the name of every column.
names(xyz)

#step6 perform sort operations on the columns of a dataset.
sort(filterdata$Year)
sort(unique(xyz$Country.or.region))
sort(filterdata$GDP.per.capita)     

#step7 statistical summary of any two columns.
summary(filterdata$Overall.rank)
