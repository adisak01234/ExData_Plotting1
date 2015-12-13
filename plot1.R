data<-read.table("household_power_consumption.txt",header=TRUE,sep=";",colClasses="character",na.strings="?")
data$Date<-as.Date(data$Date,"%d/%m/%Y")
data<-data[data$Date=="2007-02-01"|data$Date=="2007-02-02",]
data[[3]]<-as.numeric(data[[3]])
par(mfrow=c(2,2))
hist(data[[3]], col="red", xlab="Global Active Power (kilowatts)", main="Global Active Power")