# source the plots that have already been programmed
source("plot2.R")                 #code for topleft plot
source("plot3.R")                 #code for bottomleft plot

# source to create the data
source("create_small_data.R")     #creates the x set

# primary function to create screen and png plots
plot4 <- function() {
    x <- create_small_data()
    plot4screen(x)
    plot4png(x)
}

# creates screen plot
plot4screen <- function(x) {

    par(mfcol=c(2,2))
    
    # Top Left Plot
    plot2screen(x, "Global Active Power")
    
    # Bottom Left Plot
    plot3screen(x, bty="n")
    
    # Top Right Plot
    plot(x$datetime, x$Voltage, xlab="datetime", ylab="Voltage", 
         type="l")

    # Bottom Right Plot
    plot(x$datetime, x$Global_reactive_power, xlab="datetime", 
         ylab="Global_reactive_power", type="l")

}

# create png plots
plot4png <- function(x) {
    
    png(file="plot4.png", width=480, height=480, bg="transparent")
    par(mfcol=c(2,2))
    
    # Top Left Plot
    plot2screen(x, "Global Active Power")    # plot2screen chosen because png has already been opened
    
    # Bottom Left Plot
    plot3screen(x, bty="n")     # plot3screen chosen because png has already been opened.
    
    # Top Right Plot
    plot(x$datetime, x$Voltage, xlab="datetime", ylab="Voltage", 
         type="l")
    
    # Bottom Right Plot
    plot(x$datetime, x$Global_reactive_power, xlab="datetime", 
         ylab="Global_reactive_power", type="l")
    dev.off()
}