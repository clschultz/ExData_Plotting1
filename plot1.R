# Source file to read in the data
source("create_small_data.R")

# Primary function ... creates screen and png
plot1 <- function() {
    DATA <- create_small_data()
    #dev.off()    # clear any graphics devices and reset to default
    plot1screen(DATA)
    plot1png(DATA)
}

# creates screen plot
plot1screen <- function(x) {
    hist(x$Global_active_power, col="red", main="Global Active Power",
         xlab="Global Active Power (kilowatts)")
}

# creates png plot
plot1png <- function(x) {
    png(file="plot1.png", width=480, height=480, bg="transparent")
    hist(x$Global_active_power, col="red", main="Global Active Power",
         xlab="Global Active Power (kilowatts)")
    dev.off()
}