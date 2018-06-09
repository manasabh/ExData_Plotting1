png("plot4.png",width=480,height=480)
powerconsumption<-read.csv2(file="household_power_consumption.txt",header=FALSE,skip=66637,nrows=2880,stringsAsFactors=FALSE)
names(powerconsumption)<-c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
powerconsumption$datetime<-paste(powerconsumption$Date,powerconsumption$Time)
s<-strptime(powerconsumption$date,format='%d/%m/%Y %H:%M:%S')

par(mfrow=c(2,2))
par(mar=c(4,4,3,1))

plot(s,powerconsumption$Global_active_power,xlab="",ylab="Global Active Power",type="l")
plot(s,powerconsumption$Voltage,xlab="datetime",ylab="Voltage",type="l")
plot(s,powerconsumption$Sub_metering_1,xlab="",ylab="Energy sub metering",type="l")
lines(s,powerconsumption$Sub_metering_2,col="red")
lines(s,powerconsumption$Sub_metering_3,col="blue")
legend("topright",pch=NA,col=c("black","red","blue"),legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,lwd=1)
plot(s,powerconsumption$Global_reactive_power,xlab="datetime",ylab="Global_reactive_power",type="l")



dev.off()

