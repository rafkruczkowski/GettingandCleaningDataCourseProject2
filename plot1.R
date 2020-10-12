# Library
library("data.table")
# Data files
SCC <- data.table::as.data.table(x = readRDS(file = "data/Source_Classification_Code.rds"))
NEI <- data.table::as.data.table(x = readRDS(file = "data/summarySCC_PM25.rds"))
# Output
png(filename='plot1.png')
##########################################################################################
# Have total emissions from PM2.5 decreased in the United States from 1999 to 2008? 
# Using the base plotting system, make a plot showing the total PM2.5 emission 
# from all sources for each of the years 1999, 2002, 2005, and 2008.
##########################################################################################
# Modify output notation
NEI[, Emissions := lapply(.SD, as.numeric), .SDcols = c("Emissions")]
# Create new data frame with emissions by year
totalNEI <- NEI[, lapply(.SD, sum, na.rm = TRUE), .SDcols = c("Emissions"), by = year]
# Pot values with Years and Emissions
barplot(totalNEI[, Emissions], names = totalNEI[, year], xlab = "Years", ylab = "Emissions", main = "Emissions 1999 to 2008")
# Save to file     
dev.off()

NEI[, Emissions := lapply(.SD, /1000), .SDcols = c("Emissions")]