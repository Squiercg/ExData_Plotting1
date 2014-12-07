#Plot 4, the loading data is already on memory, run plot1.R if not

png("plot4.png")
layout(matrix(1:4,ncol=2,nrow=2,byrow=T))
plot(dados$Global_active_power~dados$date.time,ylab='Global Active Power', xlab='', type='l')
plot(dados$Voltage~dados$date.time,xlab='datetime', ylab='Voltage', type='l')
plot(dados$Sub_metering_1~dados$date.time , type='l',xlab='', ylab='Energy sub metering')
lines(dados$Sub_metering_2~dados$date.time , col='red')
lines(dados$Sub_metering_3~dados$date.time , col='blue')
legend('topright',legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),col=c('black', 'red', 'blue'),
       lty='solid', bty='n')
plot( dados$Global_reactive_power~dados$date.time,xlab='datetime', ylab='Global_reactive_power', type='l')
dev.off()
