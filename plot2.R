plot2 <- function(x) {
    plot(data$datetime, data$Global_active_power, type="l", 
         ylab="Global Active Power (kilowatts)", xlab="")
    
    png(file="plot2.png", width=480, height=480)
    plot(data$datetime, data$Global_active_power, type="l", 
         ylab="Global Active Power (kilowatts)", xlab="")
    dev.off()
}