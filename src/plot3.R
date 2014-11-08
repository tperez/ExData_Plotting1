source("src/readData.R")

# get data.frame
epc <- readData()

# create PNG
png("plots/plot3.png",
    width = 480,
    height = 480)

with(epc, {
    plot(DateTime, Sub_metering_1, type="l", xlab="", 
        ylab="Energy sub metering")
    lines(DateTime, Sub_metering_2, col="red")
    lines(DateTime, Sub_metering_3, col="blue")
    legend("topright", 
        legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), fill, 
        col=c("black", "red", "blue"), lty=1)
})

dev.off()
