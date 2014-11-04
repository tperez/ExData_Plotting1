source("src/readData.R")

# get data.frame
epc <- readData()

# create PNG
png("plots/plot2.png",
    width = 480,
    height = 480)

plot(epc$DateTime,
     epc$Global_active_power, 
     type = "l",
     xlab = "",
     ylab = "Global Active Power (kilowatts)")

dev.off()
