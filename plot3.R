data <- read.table("filtered_power_dataumption.txt", header = TRUE, na.strings="?", sep=";")

# convert datetime
data$DateTime=strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")

# start ploting...
png(file = "plot3.png")
plot(data$DateTime, data$Sub_metering_1, type="n", xlab="", ylab="Energy sub metering")
lines(data$DateTime, data$Sub_metering_1)
lines(data$DateTime, data$Sub_metering_2, col="red")
lines(data$DateTime, data$Sub_metering_3, col="blue")
legend("topright", pch = ".", lwd=2, cex=0.8, col = c("black", "blue", "red"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()
