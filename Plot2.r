## Generating Plot 2
plot(finalData$SetTime, finalData$Global_active_power, type="l", col="black", xlab="", ylab="Global Active Power (kilowatts)")
#copying the result to png format
dev.copy(png, file="plot2.png", width=480, height=480)
dev.off()
cat("Plot2.png has been saved in", getwd())