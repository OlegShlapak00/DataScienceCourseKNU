data=read.csv("C:\\Users\\oleg_\\Desktop\\R\\DataScienceCourseKNU\\orders_parsed.csv")

orders = count(data, aisle, sort = TRUE)
orders = head(orders, 5)
orders
ggplot(orders, aes(x = aisle, y = n)) +
  geom_bar(fill = "#0073C2FF", stat = "identity")