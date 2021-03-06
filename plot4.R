# Libraries
library("data.table")
library("ggplot2")
# Data file
SCC <- data.table::as.data.table(x = readRDS(file = "data/Source_Classification_Code.rds"))
NEI <- data.table::as.data.table(x = readRDS(file = "data/summarySCC_PM25.rds"))
# Output file
png("plot4.png")
###########################################################################################
# Across the United States, how have emissions from coal combustion-related sources changed from 1999–2008?
###########################################################################################
# Subset coal combustion related NEI data
combustionRelated <- grepl("comb", SCC[, SCC.Level.One], ignore.case=TRUE)
coalRelated <- grepl("coal", SCC[, SCC.Level.Four], ignore.case=TRUE) 
combustionSCC <- SCC[combustionRelated & coalRelated, SCC]
combustionNEI <- NEI[NEI[,SCC] %in% combustionSCC]
# Plot values by year
ggplot(combustionNEI,aes(x = factor(year),y = Emissions/10^5)) +
  geom_bar(stat="identity", fill ="#FF9999", width=0.75) +
  labs(x="year", y=expression("Total PM"[2.5]*" Emission (10^5 Tons)")) +   theme(axis.text.x=element_text(angle = 90, vjust = 0.5)) +
  labs(title=expression("PM"[2.5]*" Coal Combustion Source Emissions Across US from 1999-2008"))

dev.off()