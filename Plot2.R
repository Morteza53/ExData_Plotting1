datafile <- "./household_power_consumption.txt"
My_data <- read.table(datafile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
My_data1 <- My_data[My_data$Date %in% c("1/2/2007","2/2/2007") ,]
datetime <- strptime(paste(My_data1$Date, My_data1$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(My_data1$Global_active_power)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.copy(png, file="plot2.png", width=480, height=480)
dev.off()


