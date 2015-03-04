setwd("~/ExData/ExData_Plotting1")

# Preparing data
data <- read.csv2("./data/household_power_consumption.txt", na.strings = "?")

x <- paste(data$Date, data$Time)
data$Date <- strptime(x, "%d/%m/%Y %H:%M:%S")

sample <- subset(data, as.Date(Date) >= as.Date("2007-02-01") & as.Date(Date) <= as.Date("2007-02-02"))
write.csv(sample, "./data/sample.csv")

# Tidying up the sample
sample2 <- read.csv("./data/sample.csv")
sample2$X <- NULL
sample2$Date <- as.Date(sample2$Date)
