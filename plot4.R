source("plot2.R")
source("plot3.R")

plot4 <- function(x) {

    par(mfcol=c(2,2))
    
    # Top Left Plot
    plot2(x)
    
    # Bottom Left Plot
    plot3(x, bty="n")
    
    # Top Right Plot
    plot(data$datetime, data$Voltage, xlab="datetime", ylab="Voltage", 
         type="l")

    # Bottom Right Plot
    plot(data$datetime, data$Global_reactive_power, xlab="datetime", 
         ylab="Global_reactive_power", type="l")

}

plot4png <- function(x) {
    
    png(file="plot4.png", width=480, height=480, bg="transparent")
    par(mfcol=c(2,2))
    
    # Top Left Plot
    plot2(x)
    
    # Bottom Left Plot
    plot3(x, bty="n")
    
    # Top Right Plot
    plot(data$datetime, data$Voltage, xlab="datetime", ylab="Voltage", 
         type="l")
    
    # Bottom Right Plot
    plot(data$datetime, data$Global_reactive_power, xlab="datetime", 
         ylab="Global_reactive_power", type="l")
    dev.off()
}