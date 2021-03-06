
png("plot1.png",width=480,height=480)
powerconsumption<-read.csv2(file="household_power_consumption.txt",header=FALSE,skip=66637,nrows=2880,stringsAsFactors=FALSE)
names(powerconsumption)<-c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
hist(as.numeric(powerconsumption$Global_active_power),xlab="Global Active Power (kilowatts)",col="red",main="Global Active Power")
dev.off()