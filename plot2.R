data<-read.table("household_power_consumption.txt",header=TRUE,sep=";",colClasses="character",na.strings="?")
data$Date<-as.Date(data$Date,"%d/%m/%Y")
data<-data[data$Date=="2007-02-01"|data$Date=="2007-02-02",]
x<-paste(data[[1]],data[[2]])
time<-strptime(x,"%Y-%m-%d %H:%M:%S")
par(mfrow=c(1,1))
plot(time,data[[3]],type="l",xlab="", ylab = "Global Active Power (kilowatts)")