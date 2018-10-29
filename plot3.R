readData <- "./household_power_consumption.txt"
dataTable <- read.table(readData,header= TRUE, sep = ";")
relevantData <- dataTable[dataTable$Date %in% c("1/2/2007","2/2/2007"),]
timestamp1 <- strptime(paste(relevantData$Date,relevantData$Time,sep=" "),"%d/%m/%Y %H:%M:%S")
png("plot3.png", width=480, height=480)
plot(timestamp1,relevantData$Sub_metering_1,col="green",type="l",ylab="Energy sub metering",ylim=c(0,40),xlab = "")
par(new=TRUE)
plot(timestamp1,relevantData$Sub_metering_2,col="red",type="l",ylim=c(0,40),xlab = "",ylab="")
par(new=TRUE)
plot(timestamp1,relevantData$Sub_metering_3,col="blue",type="l",ylim=c(0,40),xlab = "",ylab="")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("green","red","blue"),lty=1)
dev.off()