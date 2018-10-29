readData <- "./household_power_consumption.txt"
dataTable <- read.table(readData,header= TRUE, sep = ";")
relevantData <- dataTable[dataTable$Date %in% c("1/2/2007","2/2/2007"),]
gActivePower <- as.numeric( relevantData$Global_active_power)
timestamp1 <- strptime(paste(relevantData$Date,relevantData$Time,sep=" "),"%d/%m/%Y %H:%M:%S")
png("plot2.png", width=480, height=480)
plot(timestamp1, gActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()