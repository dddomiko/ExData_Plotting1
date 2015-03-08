# Download zip File
filename = "ExData_Plotting1.zip"
if (!file.exists(filename)) {
  download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",
                destfile = filename,
                method = "internal")
}

# Unzip and import data
data <- read.table(unz(filename, "household_power_consumption.txt"), 
                   header = TRUE, sep = ";", na.strings = "?")

# Load packages
library(data.table)

# data.table
data <- as.data.table(data)

# convert classes
data[, Date := as.Date(Date, "%d/%m/%Y")]

# Filter 2 day period in February 2007
data <- data[Date >= as.Date('2007-02-01') & Date <= as.Date('2007-02-02')]

# convert classes
data[, dateTime := as.POSIXct(strptime(paste(Date,Time),"%Y-%m-%d %H:%M:%S"))]

# Set language
Sys.setlocale("LC_TIME", "English")

# Save data
save(data, file = "plotData.RData")
