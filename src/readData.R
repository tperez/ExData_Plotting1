
readData <- function() {
    # read data
    epc <- read.csv("data/household_power_consumption.txt", 
                    header=TRUE, 
                    sep=";",
                    na.strings="?")

    # convert Date to Date class
    epc$Date <- as.Date(epc$Date, format="%d/%m/%Y")

    # use only specified data
    valid_dates <- c(as.Date("02/01/2007", format="%m/%d/%Y"),
                     as.Date("02/02/2007", format="%m/%d/%Y"))
    epc <- epc[epc$Date %in% valid_dates,]

    # create datetime from Date and Time
    epc$DateTime <- strptime(paste(epc$Date, epc$Time), 
                             format="%Y-%m-%d %H:%M:%S")

    return(epc)
}
