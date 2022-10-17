pmean <- function(directory, pollutant, id=1:332){
  filenames <- sprintf("%03d.csv", id)
  filenames <- file.path(directory, filenames)
  dfs <- lapply(filenames, read.csv)
  data <- do.call("rbind", dfs)
  mean(data[[pollutant]], na.rm = TRUE)
}

complete <- function(directory, id){
  filenames <- sprintf("%03d.csv", id)
  filenames <- file.path(directory, filenames)
  dfs <- lapply(filenames, read.csv)
  cc <- lapply(dfs, complete.cases)
  cc_sum <- lapply(cc, sum)
  data.frame(id = id, nobs = I(cc_sum))
}

corr <- function(directory, threshold=0){
  filenames <- list.files(directory, pattern="*.csv", full.names=TRUE)
  dfs <- lapply(filenames, read.csv)
  res <- c()
  for (df in dfs){
    if (sum(complete.cases(df)) > threshold){
      res<-c(res, cor(df[['sulfate']], df[['nitrate']], use='pairwise.complete.obs'))
    }
  }
  return(res)
}



my_directory ="C:\\Users\\oleg_\\Desktop\\R\\DataScienceCourseKNU\\specdata"

pmean(my_directory,"sulfate",1:10)

complete(my_directory, 1)
complete("specdata", c(2, 4, 8, 10, 12))
complete("specdata", 10:60)

cr<- corr(my_directory, 150)
cr
head(cr);
summary(cr)

