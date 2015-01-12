# script for loading data into R

load_data <- function() {

	filename <- "household_power_consumption.txt"
	df <- read.table(filename,
	header=TRUE,
	sep=";",
	colClasses=c("character", "character", rep("numeric",7)),
	na="?")

	# converting date variable
	df$Date <- as.Date(df$Date, "%d/%m/%Y")
	df$Time <- as.POSIXct(paste(as.Date(df$Date), df$Time))

	# using only data dates 2007-02-01 and 2007-02-02
	dates <- as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d")

	df <- subset(df, Date %in% dates)
return(df)

}