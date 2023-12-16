library(ggplot2)
library(tidyr)
library(dplyr)
xyz <- read.csv("report_2018-2019.csv", header = TRUE, sep = ",")
xyz
#step2 sort and select top 5 
top_5_country_region <- report_2018_2019 %>%
  arrange(desc(Healthy.life.expectancy)) %>%
  head(5)
#step3: create pie chart
pie_chart <- ggplot(top_5_country_region,aes(x="",y=Healthy.life.expectancy,fill = Country.or.region))+
  geom_bar(width = 1,stat = "identity")+
  coord_polar("y",start = 0)+
  theme_void()+
  labs(title="Top 5 country regions Healthy life expectancy",fill="Healthy life expectancy")
print(pie_chart)
