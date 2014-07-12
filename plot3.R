source("create_small_data.R")    # code to create the data frame

# create screen and png plots
plot3 <- function() {
  DATA <- create_small_data()
  plot3screen(DATA)
  plot3png(DATA)
}
# create screan plot given a data set
plot3screen <- function(x, bty="o") {
    plot(x$datetime, x$Sub_metering_1, type="n", 
         xlab="", ylab="Energy sub metering")
    lines(x$datetime, x$Sub_metering_1, col="black")
    lines(x$datetime, x$Sub_metering_2, col="red")
    lines(x$datetime, x$Sub_metering_3, col="blue")
    legend("topright", 
           legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
           lty=1, lwd=1, col=c("black", "red", "blue"), bty=bty)
}

# create png given a dataset
plot3png <- function(x, bty="o") {
    png(file="plot3.png", width=480, height=480, bg="transparent")
    plot(x$datetime, x$Sub_metering_1, type="n", 
         xlab="", ylab="Energy sub metering")
    lines(x$datetime, x$Sub_metering_1, col="black")
    lines(x$datetime, x$Sub_metering_2, col="red")
    lines(x$datetime, x$Sub_metering_3, col="blue")
    legend("topright", 
           legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
           lty=1, lwd=1, col=c("black", "red", "blue"), bty=bty)
    dev.off()
}