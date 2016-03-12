data<-read.table("household_power_consumption.txt",header = TRUE,sep=";",colClasses = c("character", "character", rep("numeric",7)),na.strings = "?")
workData<-data[data$Date=="1/2/2007"|data$Date=="2/2/2007",]
data_time<-paste(workData$Date,workData$Time)
workData$DateTime<-strptime(data_time,"%d/%m/%Y %H:%M:%S")
plot(workData$DateTime,workData$Global_active_power,type='l',xlab="",ylab="Global Active Power(kolowatts)")
dev.copy(device=png,filename='plot2.png',width=480,height=480)
dev.off()
