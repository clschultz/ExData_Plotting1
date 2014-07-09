# Creates a subset from data file for easier use later
create_small_data <- function() {
    data <- read.csv("household_power_consumption.txt", 
                     na.strings="?", 
                     sep=";",
#                      nrows=30000,
                     colClasses=c("character", "character", "numeric", "numeric",
                                  "numeric", "numeric", "numeric", "numeric",
                                  "numeric"))
    # create datetime field
    data$datetime <- paste(data$Date, data$Time)

    # convert Date column to Date type
    data$Date <- as.Date(data$Date, format="%d/%m/%Y")
    data <- subset(data, (Date == "2007-02-01" | Date == "2007-02-02"))

    # convert datetime field to datetime
    data$datetime <- strptime(data$datetime, format="%d/%m/%Y %H:%M:%S")
    
    data
}
