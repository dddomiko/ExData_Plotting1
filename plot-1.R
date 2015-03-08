# Import data
source("getData.R")

# Create & Save plot
png('plot1.png', width = 480, height = 480, units = "px")
hist(data$Global_active_power, col = "red", main = "Global Active Power",
     xlab = "Frequency", ylab = "Global Active Power (kilowatts)")
dev.off()
