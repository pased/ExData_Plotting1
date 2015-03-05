Sys.setlocale("LC_TIME", "English")

data <- read.csv("./data/sample.csv")
data$Date <- as.POSIXlt(data$Date)

png(filename = "plot4.png")
par(mfrow=c(2,2), mar=c(4,4,4,2))

#Plot 1
plot(y=data$Global_active_power, x=data$Date, type="c",
     xlab="", ylab="Global Active Power")
lines(y=data$Global_active_power, x=data$Date, type="l")

#Plot 2
plot(y=data$Voltage, x=data$Date, type="c",
     xlab="datetime", ylab="Voltage")
lines(y=data$Voltage, x=data$Date, type="l")

# Plot 3
plot(y=data$Sub_metering_1, x=data$Date, type="c",
     xlab="", ylab="Energy sub metering")
lines(y=data$Sub_metering_1, x=data$Date, type="l")
lines(y=data$Sub_metering_2, x=data$Date, type="l", col="red")
lines(y=data$Sub_metering_3, x=data$Date, type="l", col="blue")
legend("topright",
       c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       lty=c(1,1,1), col=c("black","red","blue"), bty="n")

#Plot 4
plot(y=data$Global_reactive_power, x=data$Date, type="c",
     xlab="datetime", ylab="Global_reactive_power")
lines(y=data$Global_reactive_power, x=data$Date, type="l")
dev.off()