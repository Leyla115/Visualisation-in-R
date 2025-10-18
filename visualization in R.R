
data<-read.csv("http://www.ut.ee/~iseppo/B98011.csv")
data

library(dplyr, warn.conflict=FALSE )
summary(data)
str(data)
is.na(data)
class(data$value)
as.character(data$value)
data$value<-as.numeric(as.character(data$value))
str(data)

library(lubridate, warn.conflict=FALSE)
data$date <- ymd(data$date)
data

library(ggplot2)

plot1=ggplot(data,aes(date,value))+geom_point(size=3,shape=21,aes(fill = type))+geom_line(aes(color=type)) +theme_minimal()
ggsave(plot1, filename = "plot1.png", height = 3, width = 8, scale = 1)
plot1

plot2<-ggplot(data=data, aes(x=date, y=value))+
  geom_line(aes(color=type))+
  geom_point(shape=21, aes(fill=type),size=3)+
  theme_minimal()+ 
  labs(title = "Leyla Aghayarli",
       subtitle = "Graph for homework",
       caption = "Source: some randomly generated data",
       x = "date", y = "value")+
  scale_color_manual(values=c("Type 1" = "blue",
                              "Type 2" = "black"))+
  scale_fill_manual(values=c("Type 1" = "blue",
                             "Type 2" = "black"))+
  theme(axis.text.x = element_text(angle = 90))+
  theme(axis.title.x = element_blank())+
  scale_x_date(date_breaks = "1 month", date_labels = "%B")
plot2

ggsave(filename = "plot2.png", width=8, height=3,scale=1)
 