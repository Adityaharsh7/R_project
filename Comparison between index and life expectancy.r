library(ggplot2)
library(tidyr)
library(dplyr)
xyz <- read.csv("report_2018-2019.csv", header = TRUE, sep = ",")
xyz

#step1 filter data
FilterData <- xyz %>%
  filter(Year == 2018)
print(FilterData)

#step2 create scatter chart
scatter_chart <- ggplot(data_2018, aes(x=Overall.rank,y=Healthy.life.expectancy))+
  geom_point()+
  labs(title="comparison between index and life expectancy",x="overall rank",y="Healthy life expectancy")+
  theme(axis.text.x = element_text(angle = 60, hjust = 1))
print(scatter_chart)
