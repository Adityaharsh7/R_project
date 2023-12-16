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
