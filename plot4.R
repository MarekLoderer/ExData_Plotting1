source("loadData.R") #code for loading data

plot4 <- function() {
  
  Sys.setlocale("LC_TIME", "English")
  
  suBdata <- load_data()#loading data
  
  par(mfrow=c(2,2))
  
  # plot No.1
  plot(suBdata$Time, suBdata$Global_active_power, type="l", xlab="", ylab="Global Active Power")
  
  # plot No.2
  plot(suBdata$Time, suBdata$Voltage, type="l", xlab="datetime", ylab="Voltage")
  
  # plot No.3
  plot(suBdata$Time, suBdata$Sub_metering_1, type="l", col="black", xlab="", ylab="Energy sub metering")
  lines(suBdata$Time, suBdata$Sub_metering_2, col="red")
  lines(suBdata$Time, suBdata$Sub_metering_3, col="blue")
  legend("topright", col=c("black", "red", "blue"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, box.lwd=0)
  
  # plot No.4
  plot(suBdata$Time, suBdata$Global_reactive_power, type="n", xlab="datetime", ylab="Global_reactive_power")
  lines(suBdata$Time, suBdata$Global_reactive_power)
  
  dev.copy(png, file="plot4.png", width=480, height=480)
  dev.off()
}