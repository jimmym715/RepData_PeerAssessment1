source("get_zip.R")

zipFilename <- "repdata-data-activity.zip"

zipFileDownloadUrl <- "https://d396qusza40orc.cloudfront.net/repdata%2Fdata%2Factivity.zip"

getZip(zipFilename, zipFileDownloadUrl)

activityDataFilename <- "activity.csv"

activityDataFile <- unz(zipFilename, activityDataFilename)

activityData <- read.csv(activityDataFile)

dateAsDate <- strptime(as.character(activityData$date), format = "%Y-%m-%d")

activityData <- data.frame(activityData$steps, dateAsDate, activityData$interval)

colnames(activityData) <- c("steps", "date", "interval")

activityDataNoNA <- subset(activityData, !is.na(activityData$steps))
