data <- read.table("filtered_power_consumption.txt", header = TRUE, na.strings="?", sep=";")
png(file = "plot1.png") 
hist(data$Global_active_power, xlab = 'Global Active Power (kilowatts)', main='Global Active Power', col='red')
dev.off()