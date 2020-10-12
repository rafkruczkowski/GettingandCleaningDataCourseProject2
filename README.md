# GettingandCleaningDataCourseProject2
Coursera Data Science Specialization Course 
Course Project

## Project Description
Explore the data from the dataset and answer the questions below.
https://www.coursera.org/learn/exploratory-data-analysis/peer/b5Ecl/course-project-2


## Project Questions
# 1
Have total emissions from PM2.5 decreased in the United States from 1999 to 2008? Using the base plotting system, make a plot showing the total PM2.5 emission from all sources for each of the years 1999, 2002, 2005, and 2008.

![1](https://github.com/rafkruczkowski/GettingandCleaningDataCourseProject2/blob/main/plot1.png)

# 2
Have total emissions from PM2.5 decreased in the Baltimore City, Maryland (\color{red}{\verb|fips == "24510"|}fips == "24510") from 1999 to 2008? Use the base plotting system to make a plot answering this question.
Of the four types of sources indicated by the \color{red}{\verb|type|}type (point, nonpoint, onroad, nonroad) variable, which of these four sources have seen decreases in emissions from 1999–2008 for Baltimore City? 
Which have seen increases in emissions from 1999–2008? Use the ggplot2 plotting system to make a plot answer this question.

![2](https://github.com/rafkruczkowski/GettingandCleaningDataCourseProject2/blob/main/plot2.png)

# 3
Across the United States, how have emissions from coal combustion-related sources changed from 1999–2008?

![3](https://github.com/rafkruczkowski/GettingandCleaningDataCourseProject2/blob/main/plot3.png)

# 4
How have emissions from motor vehicle sources changed from 1999–2008 in Baltimore City?

![4](https://github.com/rafkruczkowski/GettingandCleaningDataCourseProject2/blob/main/plot4.png)

# 5
Compare emissions from motor vehicle sources in Baltimore City with emissions from motor vehicle sources in Los Angeles County, California (\color{red}{\verb|fips == "06037"|}fips == "06037"). Which city has seen greater changes over time in motor vehicle emissions?

![5](https://github.com/rafkruczkowski/GettingandCleaningDataCourseProject2/blob/main/plot5.png)

## Project Files
```
.
├── data
│   ├── Source_Classification_Code.rds
│   └── summarySCC_PM25.rds
├── plot1.png
├── plot1.R
├── plot2.png
├── plot2.R
├── plot3.png
├── plot3.R
├── plot4.png
├── plot4.R
├── plot5.png
├── plot5.R
├── plot6.png
├── plot6.R
└── README.md

1 directory, 15 files
```