#Code for plot2 
#by kesavanrks
#submitted on 10 Jan 206
#reading the data
data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
#subsetting the data
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(subSetData$Global_active_power)
#naming the plot
png("plot2.png", width=480, height=480)
#plotting the graph
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
invisible(dev.off())
