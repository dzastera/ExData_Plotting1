## Week 1, Course Project 1

# set working dir
setwd("~/R Projects/Coursera/04_ExpDataAnalysis/Week 1")

# load data
df <- read.table("household_power_consumption.txt", sep=";", header=TRUE, na.strings = "?")
df$DateTime <- strptime(paste(df$Date, df$Time), "%d/%m/%Y %T", tz="GMT")

# subset the data to 2007-02-01 to 2007-02-02
set <- subset(df, as.Date(DateTime)>="2007-02-01" & as.Date(DateTime)<="2007-02-02")


## Plot #2
# plot of Global Active Power over time

png("plot2.png", 
    width = 480,
    height = 480,
    units = "px")


plot(x = set$DateTime, 
     y = set$Global_active_power, 
     type="l", 
     xlab="", 
     ylab="Global Active Power (kilowatts)")


dev.off()


