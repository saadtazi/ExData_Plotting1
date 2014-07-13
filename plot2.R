data <- read.table("filtered_power_consumption.txt", header = TRUE, na.strings="?", sep=";")

# convert datetime
data$DateTime=strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")

png(file = "plot2.png") 
plot(data$DateTime, data$Global_active_power, type="n", xlab="", ylab="Global Active Power (kilowatts)")
lines(data$DateTime, data$Global_active_power)
head(data)

dev.off()