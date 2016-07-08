## Week 1, Course Project 1

# set working dir
setwd("~/R Projects/Coursera/04_ExpDataAnalysis/Week 1")

# load data
df <- read.table("household_power_consumption.txt", sep=";", header=TRUE, na.strings = "?")
df$DateTime <- strptime(paste(df$Date, df$Time), "%d/%m/%Y %T", tz="GMT")

# subset the data to 2007-02-01 to 2007-02-02
set <- subset(df, as.Date(DateTime)>="2007-02-01" & as.Date(DateTime)<="2007-02-02")


## Plot #3
# plot of sub metering over time

png("plot3.png", 
    width = 480,
    height = 480,
    units = "px")

plot(x = set$DateTime, 
     y = set$Sub_metering_1, 
     type="l", 
     xlab="", 
     ylab="Energy sub metering")

points(x = set$DateTime, 
       y = set$Sub_metering_2, 
       type = "l", 
       col = "red")

points(x = set$DateTime, 
       y = set$Sub_metering_3, 
       type = "l", 
       col = "blue")

legend("topright", 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lty = "solid", 
       col=c("black","red","blue"))

dev.off()
