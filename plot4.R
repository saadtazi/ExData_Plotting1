data <- read.table("filtered_power_consumption.txt", header = TRUE, na.strings="?", sep=";")

# convert datetime
data$DateTime=strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")

# start ploting...

png(file = "plot4.png")
par(mfrow=c(2,2))

plot(data$DateTime, data$Global_active_power, type="n", xlab="", ylab="Global Active Power (kilowatts)")
lines(data$DateTime, data$Global_active_power)

plot(data$DateTime, data$Voltage, type="n", xlab="datetime", ylab="Global Active Power (kilowatts)")
lines(data$DateTime, data$Voltage)

plot(data$DateTime, data$Sub_metering_1, type="n", xlab="", ylab="Energy sub metering")
lines(data$DateTime, data$Sub_metering_1)
lines(data$DateTime, data$Sub_metering_2, col="red")
lines(data$DateTime, data$Sub_metering_3, col="blue")
legend("topright", pch = ".", lwd=2, col = c("black", "blue", "red"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

plot(data$DateTime, data$Global_reactive_power, type="n", xlab="datetime", ylab="Global_reactive_power")
lines(data$DateTime, data$Global_reactive_power)
dev.off()
