source("getAndCleanData.R")

png(file="plot1.png", width=480, height=480, units="px")
hist(epcTidy$Global_active_power, 
     col="red",
     xlab = "Global Active Power (kilowatts)",
     main = "Global Active Power");
dev.off()
