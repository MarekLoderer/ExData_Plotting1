source("loadData.R") #code for loading data

plot3 <- function() {
      
	Sys.setlocale("LC_TIME", "English")

	suBdata <- load_data()#loading data
  
	plot(suBdata$Time, suBdata$Sub_metering_1, type="l", col="black",
	xlab="", ylab="Energy sub metering")
	
	lines(suBdata$Time, suBdata$Sub_metering_2, col="red")
	lines(suBdata$Time, suBdata$Sub_metering_3, col="blue")
	
	legend("topright", col=c("black", "red", "blue"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1)

	dev.copy(png, file="plot3.png", width=480, height=480)
	dev.off()
}
