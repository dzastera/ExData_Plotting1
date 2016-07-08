## Week 1, Course Project 1

# set working dir
setwd("~/R Projects/Coursera/04_ExpDataAnalysis/Week 1")

# load data
df <- read.table("household_power_consumption.txt", sep=";", header=TRUE, na.strings = "?")
df$Date <- strptime(df$Date, "%d/%m/%Y")

# subset the data to 2007-02-01 to 2007-02-02
set <- subset(df, Date>="2007-02-01" & Date<="2007-02-02")


## Plot #1
# hist of Global Active Power

png("plot1.png", 
    width = 480,
    height = 480,
    units = "px")

hist(set$Global_active_power, 
     xlab = "Global Active Power (kilowatts)", 
     col  = "red", 
     main = "Global Active Power")

dev.off()