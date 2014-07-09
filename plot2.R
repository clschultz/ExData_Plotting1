plot2 <- function(x) {
    plot(data$datetime, data$Global_active_power, type="l", 
         ylab="Global Active Power (kilowatts)", xlab="")
}

plot2png <- function(x) {
    png(file="plot2.png", width=480, height=480, bg="transparent")
    plot(data$datetime, data$Global_active_power, type="l", 
         ylab="Global Active Power (kilowatts)", xlab="")
    dev.off()
}