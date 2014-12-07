
#Plot 2, the loading data is already on memory, run plot1.R if not
png("plot2.png")
plot(dados$Global_active_power~dados$date.time,ylab='Global Active Power (kilowatts)', xlab='', type='l')
dev.off()


