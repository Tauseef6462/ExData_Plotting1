dataFile - .datahousehold_power_consumption.txt
data - read.table(dataFile, header=TRUE, sep=;, stringsAsFactors=FALSE, dec=.)
subSetData - data[data$Date %in% c(122007,222007) ,]

#str(subSetData)
globalActivePower - as.numeric(subSetData$Global_active_power)
png(plot1.png, width=480, height=480)
hist(globalActivePower, col=red, main=Global Active Power, xlab=Global Active Power (kilowatts))
dev.off()