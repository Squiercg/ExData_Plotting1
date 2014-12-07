#Plot 3, the loading data is already on memory, run plot1.R if not

png("plot3.png")
plot(dados$date.time, dados$Sub_metering_1, type='l',xlab='', ylab='Energy sub metering')
lines(dados$date.time, dados$Sub_metering_2, col='red')
lines(dados$date.time, dados$Sub_metering_3, col='blue')
legend('topright',legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),col=c('black', 'red', 'blue'),lty='solid')
dev.off()
