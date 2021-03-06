data<-read.table("household_power_consumption.txt",header=TRUE,sep=";",colClasses="character",na.strings="?")
data$Date<-as.Date(data$Date,"%d/%m/%Y")
data<-data[data$Date=="2007-02-01"|data$Date=="2007-02-02",]
x<-paste(data[[1]],data[[2]])
time<-strptime(x,"%Y-%m-%d %H:%M:%S")
par(mfrow=c(1,1))
plot(time,data[[7]],type="l",xlab="",ylab="Energy sub metering")
lines(time,data[[8]],col="red")
lines(time,data[[9]],col="blue")
legend("topright",col=c("black","red","blue"),legend=c("Sub_metering_1      ","Sub_metering_2      ","Sub_metering_3      "),lwd=1)
