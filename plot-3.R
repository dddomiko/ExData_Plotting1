# Import data
source("getData.R")

# Create & Save plot

png('plot3.png', width = 480, height = 480, units = "px")
plot(data$dateTime, data$Sub_metering_1, type = "l", main = "",
     xlab = "", ylab = "Energy sub metering")
lines(data$dateTime, data$Sub_metering_2, col = "red")
lines(data$dateTime, data$Sub_metering_3, col = "blue")
legend("topright", 
       legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       col = c("black","red","blue"),
       lty = 1)
dev.off()


