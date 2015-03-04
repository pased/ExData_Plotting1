setwd("~/ExData/ExData_Plotting1")

# Preparing data
data <- read.csv2("./data/household_power_consumption.txt")
dates <- data$Date

dates2 <- strptime(dates, "%d/%m/%Y")
data$Date <- as.Date(dates2)


sample <- subset(data, Date >= as.Date("2007-02-01") & Date < as.Date("2007-02-02"))
write.csv(sample, "./data/sample.csv")

# Tidying up the sample
sample2 <- read.csv("./data/sample.csv")
sample2$X <- NULL
sample2$Date <- as.Date(sample2$Date)

time <- strptime(data$Time, "%H:%M:%S")
data$Time <- time