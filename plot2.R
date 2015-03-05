Sys.setlocale("LC_TIME", "English")

data <- read.csv("./data/sample.csv")
data$Date <- as.POSIXlt(data$Date)

png(filename = "plot2.png")
plot(y=data$Global_active_power, x=data$Date, type="c",
     xlab="", ylab="Global Active Power (kilowatts)")
lines(y=data$Global_active_power, x=data$Date, type="l")
dev.off()

