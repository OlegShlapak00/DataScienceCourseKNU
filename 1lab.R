a<-1L
b<-1
c<-'a'
d<-TRUE
e<-1 + 1i
x<-c(5:75)
y<-c(3.14, 2.71, 0, 13)
z<-replicate(100, c(TRUE))

col1<-c(0.5, 3.9, 0, 2)
col2<-c(1.3, 131, 2.2, 7)
col3<-c(3.5, 2.8, 4.6, 5.1)
combined_matrix<-cbind(col1, col2, col3)

myList = list(1L, 2, TRUE, 'a', 1+1i)

people<-c('baby', 'baby', 'child', 'adult', 'adult', 'adult')
myFactor = factor(people, levels=c('baby','child','adult'))

match(NA, c(1, 2, 3, 4, NA, 6, 7, NA, 9, NA, 11))

sum(is.na(c(1, 2, 3, 4, NA, 6, 7, NA, 9, NA, 11)))

df<-data.frame(sum = c(1,2,3,4,5),item = c('a','b','c','d','e'))
df

colnames(df)<-c('total', 'name')
df