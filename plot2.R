source("load_data.R") #code for loading data

plot2 <- function() {
  
  Sys.setlocale("LC_TIME", "English")
  
  suBdata <- load_data()#loading data
  
  plot(suBdata$Time, suBdata$Global_active_power,
       type="l",
       xlab="",
       ylab="Global Active Power (kilowatts)")
  
  dev.copy(png, file="plot2.png", width=480, height=480)
  dev.off()
  
}