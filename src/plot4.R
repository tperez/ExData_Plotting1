source("src/readData.R")

# get data.frame
epc <- readData()

# create PNG
png("plots/plot4.png",
    width = 480,
    height = 480)

par(mfcol=c(2,2))

with(epc, 
    plot(DateTime, Global_active_power, type="l", xlab="", 
        ylab="Global Active Power"))

with(epc, {
    plot(DateTime, Sub_metering_1, type="l", xlab="", 
        ylab="Energy sub metering")
    lines(DateTime, Sub_metering_2, col="red")
    lines(DateTime, Sub_metering_3, col="blue")
    legend("topright", 
        legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), fill, 
        bty="n", col=c("black", "red", "blue"), lty=1)
})

with(epc, plot(DateTime, Voltage, xlab="datetime", type="l"))

with(epc, plot(DateTime, Global_reactive_power, xlab="datetime", type="l"))

dev.off()
