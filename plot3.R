Sys.setlocale("LC_TIME", "English")

data <- read.csv("./data/sample.csv")
data$Date <- as.POSIXlt(data$Date)

png(filename = "plot3.png")
plot(y=data$Sub_metering_1, x=data$Date, type="c",
     xlab="", ylab="Energy sub metering")
lines(y=data$Sub_metering_1, x=data$Date, type="l")
lines(y=data$Sub_metering_2, x=data$Date, type="l", col="red")
lines(y=data$Sub_metering_3, x=data$Date, type="l", col="blue")
legend("topright",
       c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       lty=c(1,1,1), col=c("black","red","blue"))
dev.off()

