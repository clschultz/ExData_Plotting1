plot3 <- function(x, bty="o") {
    plot(data$datetime, data$Sub_metering_1, type="n", 
         xlab="", ylab="Energy sub metering")
    lines(data$datetime, data$Sub_metering_1, col="black")
    lines(data$datetime, data$Sub_metering_2, col="red")
    lines(data$datetime, data$Sub_metering_3, col="blue")
    legend("topright", 
           legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
           lty=1, lwd=1, col=c("black", "red", "blue"), bty=bty)
}

plot3png <- function(x, bty="o") {
    png(file="plot3.png", width=480, height=480, bg="transparent")
    plot(data$datetime, data$Sub_metering_1, type="n", 
         xlab="", ylab="Energy sub metering")
    lines(data$datetime, data$Sub_metering_1, col="black")
    lines(data$datetime, data$Sub_metering_2, col="red")
    lines(data$datetime, data$Sub_metering_3, col="blue")
    legend("topright", 
           legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
           lty=1, lwd=1, col=c("black", "red", "blue"), bty=bty)
    dev.off()
}