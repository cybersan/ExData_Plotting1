#Internal Consumption=================================================
#C:\Users\cybernaut\Documents\R
#setwd("~/cybernaut/Documents/R/")
#downloadURL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
#downloadFile <- "./Data/household_power_consumption.zip"
#=====================================================================

#Unzipped file saved into a variable
householdFile <- "household_power_consumption.txt"

#specify field sepration and zero fields
plotData <- read.table(householdFile, header=T, sep=";", na.strings="?")

## set time variable
finalData <- plotData[plotData$Date %in% c("1/2/2007","2/2/2007"),]
SetTime <-strptime(paste(finalData$Date, finalData$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
finalData <- cbind(SetTime, finalData)

##
## Generating Plot 1
hist(finalData$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
#copying the result to png format
dev.copy(png, file="plot1.png", width=480, height=480)
dev.off()
cat("Plot1.png has been saved in", getwd())
