fileName <- "household_power_consumption.txt"
electricData <- read.table(fileName, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subElectricData <- electricData[electricData$Date %in% c("1/2/2007","2/2/2007") ,]

datetime <- strptime(paste(subElectricData$Date, subElectricData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(subElectricData$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()