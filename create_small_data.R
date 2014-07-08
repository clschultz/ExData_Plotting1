# Creates a subset from data file for easier use later
create_small_data <- function() {
    data <- read.csv("household_power_consumption.txt", 
                     na.strings="?", 
                     sep=";",
                     nrows=6843)
}
