v<- rnorm(100)
v
v[10]
v[10:20]
v[20:29]
v[v>0]

y<-data.frame(a=rnorm(100),b=1:100,cc=sample(letters,100,replace=TRUE))
y
tail(y,10)
y[10:20, ]
y[10,"b"]
y$cc


z<-c(1,2,3,NA,4,NA,5,NA)
z
NANs<-is.na(z)
NANs

mean(z, trim=0,na.rm = TRUE)
mean(z,trim = 0,na.rm=FALSE)