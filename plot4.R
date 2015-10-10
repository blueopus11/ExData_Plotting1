source("getAndCleanData.R")

png(file="plot4.png", width=480, height=480, units="px")
par(mfrow=c(2,2))

plot(epcTidy$moment, epcTidy$Global_active_power, 
     type="l", xlab="", ylab="Global Active Power")

plot(epcTidy$moment, epcTidy$Voltage, 
     type="l", xlab="datetime", ylab="Voltage")

plot(epcTidy$moment, epcTidy$Sub_metering_1, 
     type="l", xlab="", ylab="Energy sub metering")
points(epcTidy$moment, epcTidy$Sub_metering_2, 
     type="l", col="red")
points(epcTidy$moment, epcTidy$Sub_metering_3, 
       type="l", col="blue")
legend("topright", lwd=1,
       bty="n",
       col=c("black", "red", "blue"), 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

plot(epcTidy$moment, epcTidy$Global_reactive_power, 
     type="l", xlab="datetime", ylab="Global_reactive_power")

dev.off()
