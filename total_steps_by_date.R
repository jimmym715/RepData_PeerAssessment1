getTotalStepsByDate <- function(data) {
  
  totalStepsByDate <- aggregate(data[,1], list(data[,2]), sum)
  
  colnames(totalStepsByDate) <- c("Date", "TotalSteps")
  
  totalStepsByDate
}

getMeanTotalSteps <- function(data) {
  totalStepsByDate <- getTotalStepsByDate(data)
  
  meanTotalSteps <- mean(totalStepsByDate$TotalSteps)
  
  meanTotalSteps
}

getMedianTotalSteps <- function(data) {
  totalStepsByDate <- getTotalStepsByDate(data)
  
  medianTotalSteps <- median(totalStepsByDate$TotalSteps)
  
  medianTotalSteps
}








