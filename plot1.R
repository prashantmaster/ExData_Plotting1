readData <- "./household_power_consumption.txt"
dataTable <- read.table(readData,header= TRUE, sep = ";")
relevantData <- dataTable[dataTable$Date %in% c("1/2/2007","2/2/2007"),]
gActivePower <- as.numeric( relevantData$Global_active_power)
png("plot1.png", width=480, height=480)
hist(gActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()