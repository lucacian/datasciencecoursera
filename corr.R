corr <- function(directory, threshold = 0) {
  
  ## before using this .R file, Must be enter code 'setwd("E:\\r-study")'
  ##this file exist in path '"E:\\r-study"'
  directory <- ("E:\\r-study\\specdata")
  file <-list.files(directory)  
  path1 <- paste(directory, file,sep="\\")
  readfile <- c()
  test <- c()
  result <- vector(mode="numeric", length=0)
  
  for (i in 1:332 ){
    
    readfile <- read.csv(path1[i], header =T)
    test <-complete.cases(readfile)
    readfile <- readfile[test,]
    
    if( nrow(readfile) > threshold)     
    result <- append(result, cor(readfile$sulfate, readfile$nitrate))
  }
  result
}
