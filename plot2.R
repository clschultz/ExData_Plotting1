# source file to read in the data
source("create_small_data.R")

# primary program to create screen and png plots
plot2 <- function() {
    DATA <- create_small_data()
    plot2screen(DATA, "Global Active Power (kilowatts)")
    plot2png(DATA)
}

# create screen plot
plot2screen <- function(x, label) {
    plot(x$datetime, x$Global_active_power, type="l", 
         ylab=label, xlab="")
}

# create png plot
plot2png <- function(x) {
    png(file="plot2.png", width=480, height=480, bg="transparent")
    plot(x$datetime, x$Global_active_power, type="l", 
         ylab="Global Active Power (kilowatts)", xlab="")
    dev.off()
}