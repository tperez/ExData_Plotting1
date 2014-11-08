source("src/readData.R")

# get data.frame
epc <- readData()

# create PNG
png("plots/plot1.png",
    width = 480,
    height = 480)

with(epc,
    hist(Global_active_power, col = "red", main = "Global Active Power",
        xlab = "Global Active Power (kilowatts)"))

dev.off()
