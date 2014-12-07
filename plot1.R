#Loading data
library(lubridate)
download.file('https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip',method='wget',
              destfile='dados.zip')
unzip('dados.zip')
dados <- read.table('household_power_consumption.txt', header=TRUE,sep=';', na.strings='?',
                    colClasses=c(rep('character', 2),rep('numeric', 7)))
dados$Date <- dmy(dados$Date)
dados$Time <- hms(dados$Time)
dados <- subset(dados, year(Date) == 2007 & month(Date) == 2 & (day(Date) == 1 | day(Date) == 2))
dados$date.time <- dados$Date + dados$Time


png("01.png")
hist(dados$Global_active_power, main='Global Active Power',xlab='Global Active Power (kilowatts)', col='red')
dev.off()


