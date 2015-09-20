getZip <- function(zipFilename, zipFileDownloadUrl) {
  # console message
#   cat("Check for zip file named '", zipFilename, "'\n\n", sep = "")
  
  # check to see if the source data zip file 
  # exists in the working directory
  # and download the file if it does not exist
  
  if (!file.exists(zipFilename)) {
    
    # console message
#     cat("Zip file is not present so download file from ", zipFileDownloadUrl, "'\n\n")
    
    # download the zip file since it's 
    # not present in the working directory
    download.file(zipFileDownloadUrl, zipFilename)
  }
  
  # check again to see if the source data zip file 
  # exists in the working directory
  # if it still doesn't exist, stop execution
  
  if (!file.exists(zipFilename)) {
    stop(paste("unable to download '", zipFilename, "' from '", zipFileDownloadUrl, "'"))
  }
}