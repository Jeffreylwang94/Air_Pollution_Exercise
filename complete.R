complete <-  function(directory, id = 1:332) {
  file_list <- list.files(directory)
  
  outputdf <- data.frame(matrix(nrow = 0, ncol = 2))
  for (file in id) {
    data <- read.csv(file.path(directory,file_list[file]))
    complete_data <- na.omit(data)
    newdf <- data.frame(file,nrow(complete_data))
    outputdf <- rbind(outputdf,newdf)
  }
  colnames(outputdf) <- c("id","nobs")
  outputdf
}