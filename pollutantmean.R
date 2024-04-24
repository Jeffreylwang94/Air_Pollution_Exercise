pollutantmean <-  function(directory,pollutant, id = 1:332) {
  masterData <- numeric()
  for (file in id) {
    file_list <- list.files(directory)
    data <- read.csv(file.path(directory,file_list[file]))
    iter_list <- data[[pollutant]]
    masterData <- append(masterData,iter_list)
  }
  mean(masterData, na.rm=TRUE)
}