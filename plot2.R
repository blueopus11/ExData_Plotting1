source("getAndCleanData.R")

png(file="plot2.png", width=480, height=480, units="px")
plot(epcTidy$moment, epcTidy$Global_active_power, 
     type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
