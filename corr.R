corr <-  function(directory, threshold = 0) {
  output <- numeric()
  complete_data <- complete(directory)
  pass_threshold <- complete_data[complete_data$nobs > threshold,"id"]
  file_list <- list.files(directory)
  
  
  for (file in pass_threshold) {
    data <- read.csv(file.path(directory,file_list[file]))
    iter_corr <- cor(data$nitrate,data$sulfate, use = "complete.obs")
    output[length(output)+1] <- iter_corr
  } 
  
  output
}