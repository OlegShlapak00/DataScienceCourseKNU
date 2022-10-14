add2 <- function(x, y) {
  x + y;
}

add2(100,500);

above <- function(x, n = 10) {
  print(x[x > n]);
}

above(c(66,23,45,87,170), 50);

my_ifelse <- function(x, exp, n) {
    if (exp == "<") y <- x[x < n]
    else if (exp == ">") y <- x[x > n]
    else if (exp == "<=") y <- x[x <= n]
    else if (exp == ">=") y <- x[x >= n]
    else if (exp == "==") y <- x[x == n]
    else y <- x
    y
}

z = c(10, 20, 30, 40, 50, 60, 70, 80, 90, 100)

my_ifelse(z, "<", 60)
my_ifelse(z, ">", 60)
my_ifelse(z, "<=", 60)
my_ifelse(z, ">=", 60)
my_ifelse(z, "==", 60)


columnmean <- function(x,removeNA=TRUE) {

  for(i in seq_len(ncol(x))){
    print(mean(x[,i],trim=0,na.rm=removeNA))
  }
}

mat_na=matrix(c(1,3,NA,7),2,2)
mat_na

columnmean(mat_na, FALSE)
columnmean(mat_na)

y<-data.frame(a=rnorm(100),b=1:100)
columnmean(y)
