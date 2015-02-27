pollutantmean <- function(directory, pollutant, id ) {

  setwd("E:\\r-study")
  directory <- ("E:\\r-study\\specdata")
  data <-list.files(directory)  
  path <- paste(directory, data,sep="\\")
  readdata <- c()

  for (i in id){

    readdata <- rbind(readdata, read.csv(path[i], header =T)) 
  }
  
  if (pollutant == 'sulfate') {
    mean(readdata$sulfate, na.rm = T)
  } else if (pollutant == 'nitrate') {
    mean(readdata$nitrate, na.rm = T)
  
    
  }
  
 
  
