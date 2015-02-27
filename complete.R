complete <- function(directory, id = 1:332) {

  
  setwd("E:\\r-study")
  directory <- ("E:\\r-study\\specdata")
  file <-list.files(directory)  
  path1 <- paste(directory, file,sep="\\")
  readfile <- c()
  nobs <- c()
  completedata <- c()
  
  for (i in id){
      
    readfile <- read.csv(path1[i], header =T)
    nobs <-sum(complete.cases(readfile))
    completedata <- rbind(completedata, data.frame(i,nobs))
  }
  completedata
}
