# Import data
source("getData.R")

# Create & Save plot

png('plot4.png', width = 480, height = 480, units = "px")

# 2x2 Plot Gallery
par(mfrow = c(2,2))

# Plot 1
plot(data$dateTime, data$Global_active_power, type = "l", main = "",
     xlab = "", ylab = "Global Active Power")

# Plot 2
plot(data$dateTime, data$Voltage, type = "l", main = "",
     xlab = "datetime", ylab = "Voltage")

# Plot 3
plot(data$dateTime, data$Sub_metering_1, type = "l", main = "",
     xlab = "", ylab = "Energy sub metering")
lines(data$dateTime, data$Sub_metering_2, col = "red")
lines(data$dateTime, data$Sub_metering_3, col = "blue")
legend("topright", 
       legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       col = c("black","red","blue"),
       lty = 1)

# Plot 4
plot(data$dateTime, data$Global_reactive_power, type = "l", main = "",
     xlab = "datetime", ylab = "Global_reactive_power")
dev.off()


