data <- read.csv("./data/sample.csv")
data$Date <- as.Date(data$Date)

png(filename = "plot1.png")
hist(data$Global_active_power, main="Global Active Power",
     xlab="Global Active Power (kilowatts)",
     col="red")
dev.off()