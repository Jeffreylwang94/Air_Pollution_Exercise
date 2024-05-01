pollutantmean <-  function(directory,pollutant, id = 1:332) {
  masterData <- numeric()
  file_list <- list.files(directory)
  for (file in id) {
    data <- read.csv(file.path(directory,file_list[file]))
    iter_list <- data[[pollutant]]
    masterData <- append(masterData,iter_list)
  }
  mean(masterData, na.rm=TRUE)
}