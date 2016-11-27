datafile <- "./household_power_consumption.txt"
My_data <- read.table(datafile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
My_data1 <- My_data[My_data$Date %in% c("1/2/2007","2/2/2007") ,]
datetime <- strptime(paste(My_data1$Date, My_data1$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
sub_metering_1 <- as.numeric(My_data1$Sub_metering_1)
sub_metering_2 <- as.numeric(My_data1$Sub_metering_2)
sub_metering_3 <- as.numeric(My_data1$Sub_metering_3)
plot(datetime, sub_metering_1, type = "l", xlab="", ylab="Energy sub metering")
lines(datetime, sub_metering_2, type = "l", col="red")
lines(datetime, sub_metering_3, type = "l", col="blue")
legend("topright", lty=1, lwd=2.5, col = c("black", "red","blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.copy(png, file="plot3.png", width=480, height=480)
dev.off()


