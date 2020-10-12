# Library
library("data.table")
# Data files
SCC <- data.table::as.data.table(x = readRDS(file = "data/Source_Classification_Code.rds"))
NEI <- data.table::as.data.table(x = readRDS(file = "data/summarySCC_PM25.rds"))
# Output
png(filename='plot2.png')
###########################################################################################
#  Have total emissions from PM2.5 decreased in the Baltimore City, Maryland 
# (\color{red}{\verb|fips == "24510"|}fips == "24510") from 1999 to 2008? 
# Use the base plotting system to make a plot answering this question.
###########################################################################################

NEI[, Emissions := lapply(.SD, as.numeric), .SDcols = c("Emissions")]
#
totalNEI <- NEI[fips=='24510', lapply(.SD, sum, na.rm = TRUE), .SDcols = c("Emissions"), by = year]
#
barplot(totalNEI[, Emissions], names = totalNEI[, year], xlab = "Years", ylab = "Emissions", main = "Emissions over the Years")
# Save to file
dev.off()