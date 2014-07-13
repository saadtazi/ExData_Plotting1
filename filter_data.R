data = read.table("household_power_consumption.txt", sep=";", dec=".", header=TRUE)
data =subset(cons, cons$Date %in% c("1/2/2007", "2/2/2007"))
nrow(data)

write.table(data, file="filtered_power_consumption.txt", sep=";", row.names=FALSE)