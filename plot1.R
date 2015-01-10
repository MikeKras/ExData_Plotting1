data<-read.csv2(file="household_power_consumption.txt",dec=".")
data_short<-data[which(data$Date=="1/2/2007"|data$Date=="2/2/2007"),]
data_short$Date<-as.Date(data_short$Date, format="%d/%m/%Y")
data_short$Time<-strptime(paste(data_short$Date,data_short$Time),format="%Y-%m-%d %H:%M:%S")
png(file="plot1.png")
hist(as.numeric(levels(data_short$Global_active_power)[data_short$Global_active_power]), col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()