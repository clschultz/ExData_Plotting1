plot1 <- function(x) {
    hist(x$Global_active_power, col="red", main="Global Active Power",
         xlab="Global Active Power (kilowatts)")
    
    png(file="plot1.png", width=480, height=480, bg="transparent")
    hist(x$Global_active_power, col="red", main="Global Active Power",
         xlab="Global Active Power (kilowatts)")
    dev.off()
}