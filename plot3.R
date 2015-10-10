source("getAndCleanData.R")

png(file="plot3.png", width=480, height=480, units="px")
plot(epcTidy$moment, epcTidy$Sub_metering_1, 
     type="l", xlab="", ylab="Energy sub metering")
points(epcTidy$moment, epcTidy$Sub_metering_2, 
     type="l", col="red")
points(epcTidy$moment, epcTidy$Sub_metering_3, 
       type="l", col="blue")
legend("topright", lwd=1,
       col=c("black", "red", "blue"), 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()
