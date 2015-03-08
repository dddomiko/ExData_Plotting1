# Import data
source("getData.R")

# Create & Save plot

png('plot2.png', width = 480, height = 480, units = "px")
plot(data$dateTime, data$Global_active_power, type = "l", main = "",
     xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()


