library(ggplot2)
library(tidyr)
library(dplyr)
xyz <- read.csv("report_2018-2019.csv", header = TRUE, sep = ",")
xyz
#step1 create line chart
line_chart <- ggplot(report_2018_2019, aes(x=Country.or.region,y=Score))+
  geom_line(color = "#191919",size=1)+
  geom_point(color = "#b31312",size=2)+
  labs(title="score of all country ",x="country/region",y="score")+
  theme_minimal()+
  theme(plot.title = element_text(hjust = 0.5))
print(line_chart)

library(ggplot2)
library(tidyr)
library(dplyr)
xyz <- read.csv("report_2018-2019.csv", header = TRUE, sep = ",")
xyz
#step2 create histogram
histogram_chart <- ggplot(report_2018_2019, aes(x=Score))+
geom_histogram(binwidth = 1,fill="#b44568",color="black")+
labs(title="overall score of 2018 and 2019",x="Score",y="count")+
theme_minimal()
print(histogram_chart)
