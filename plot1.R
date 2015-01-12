source("loadData.R") #code for loading data

plot1 <- function() {

      Sys.setlocale("LC_TIME", "English")
      
      suBdata <- load_data()#loading data
      
      hist(suBdata$Global_active_power, 
          main="Global Active Power",
          xlab="Global Active Power (kilowatts)",
          ylab="Frequency",
          col="red")
      
      dev.copy(png, file="plot1.png", width=480, height=480)
      dev.off()
}