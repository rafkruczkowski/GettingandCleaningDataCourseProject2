# Libraries
library("data.table")
library("ggplot2")
# Data Files
SCC <- data.table::as.data.table(x = readRDS(file = "data/Source_Classification_Code.rds"))
NEI <- data.table::as.data.table(x = readRDS(file = "data/summarySCC_PM25.rds"))
# Output file
png("plot5.png")
###########################################################################################
# How have emissions from motor vehicle sources changed from 1999–2008 in Baltimore City?
###########################################################################################

# Gather the subset of the NEI data which corresponds to vehicles
condition <- grepl("vehicle", SCC[, SCC.Level.Two], ignore.case=TRUE)
vehiclesSCC <- SCC[condition, SCC]
vehiclesNEI <- NEI[NEI[, SCC] %in% vehiclesSCC,]
# Subset the vehicles NEI data to Baltimore's fip
baltimoreVehiclesNEI <- vehiclesNEI[fips=="24510",]
# Plot values
ggplot(baltimoreVehiclesNEI,aes(factor(year),Emissions)) +
  geom_bar(stat="identity", fill ="#FF9999" ,width=0.75) +  labs(x="year", y=expression("Total PM"[2.5]*" Emission (10^5 Tons)")) + 
  theme(axis.text.x=element_text(angle = 90, vjust = 0.5)) +
  labs(title=expression("PM"[2.5]*" Motor Vehicle Source Emissions in Baltimore from 1999-2008"))
# Save to file
dev.off()