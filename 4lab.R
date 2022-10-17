data=read.csv("C:\\Users\\oleg_\\Desktop\\R\\DataScienceCourseKNU\\hw1_data.csv")
data

names(data)

nrow(data)

tail(data, 10)

sum(is.na(data))

mean(data[,"Ozone"], trim=0, na.rm=TRUE)

ozone <- subset(data, Ozone > 31 & Temp > 90)
ozone

mean(ozone$Solar.R)

mean(subset(data, Month == 6)$Temp)

max(subset(data, Month == 5)$Ozone, na.rm = TRUE)