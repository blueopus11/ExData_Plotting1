#  Electric Power Consumption data
#  Read in the data and explore what it looks like
epc <- read.table("household_power_consumption.txt", sep=";", header=TRUE,
                  stringsAsFactors=FALSE)

#  Change the date field data into a class that's easily used (a date class)
epc2 = transform(epc, Date = as.Date(epc$Date, "%d/%m/%Y"))

#  We will be looking at the data from 2007-02-01 to 2007-02-02.
#  Pull those dates out now, so we are manipulating a much smaller dataset.
#  I tried to do this in one command, but didn't get it to work, so I split
#  it into 2 for now.
epc3 <- subset(epc2, epc2$Date >= as.Date("2007-02-01"))
epc4 <- subset(epc3, epc3$Date <= as.Date("2007-02-02"))

#  Convert data to be plotted into numeric format.
epc5 <- transform(epc4, 
                  Global_active_power = as.numeric(Global_active_power),
                  Sub_metering_1 = as.numeric(Sub_metering_1),
                  Sub_metering_2 = as.numeric(Sub_metering_2),                  
                  Sub_metering_3 = as.numeric(Sub_metering_3),
                  Voltage = as.numeric(Voltage),
                  Global_reactive_power = as.numeric(Global_reactive_power))                  

#  We need the date/time combined together to create a representation of 
#  a unique moment in time to associate with the instance of data.
library(dplyr)
epc6 <- mutate(epc5, moment = paste(epc5$Date, epc5$Time))
epc7 <- transform(epc6, moment = strptime(epc6$moment, "%Y-%m-%d %H:%M:%S"))

#  Renaming the final tidied dataset for use in other functions.
epcTidy <- epc7
