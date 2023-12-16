library(ggplot2)
library(tidyr)
library(dplyr)
xyz <- read.csv("report_2018-2019.csv", header = TRUE, sep = ",")
xyz
#step1 filter data
FilterData <- xyz %>%
  filter(Year == 2018)
print(FilterData)
#step2 sort and select top 5
top_5_country_region <- data_2018 %>%
  arrange(desc(Overall.rank)) %>%
  head(5)
#step3: create pie chart
pie_chart <- ggplot(top_5_country_region,aes(x="",y=Score,fill = state))+
  geom_bar(width = 1,stat = "identity")+
  coord_polar("y",start = 0)+
  theme_void()+
  labs(title="Top 5 country regions score in 2018",fill="State")
print(bar_chart)
