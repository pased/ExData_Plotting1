setwd("~/ExData/ExData_Plotting1")

# Preparing data
data <- read.csv2("./data/household_power_consumption.txt")
dates <- data$Date

dates2 <- strptime(dates, "%d/%m/%Y")
data$Date <- as.Date(dates2)

sample <- subset(data, Date >= as.Date("2007-02-01") & Date < as.Date("2007-02-02"))
write.csv2(sample, "./data/sample.csv")

# Now to the plots
data <- read.csv2("./data/sample.csv")