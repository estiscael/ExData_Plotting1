plot4 <- function(){
    source("read.data.R")
    data<-read.data()
    
   png(file="plot4.png", width = 480, height = 480)
       par(mfcol= c(2, 2))
       plot.image1(data)
       plot.image2(data)
       plot.image3(data)
       plot.image4(data)
    dev.off()
}

plot.image1 <- function(data){
    plot(data$Time, data$Global_active_power, type="l", ylab="Global Active Power", xlab="")
}

plot.image2 <- function(data){
    plot(data$Time, data$Sub_metering_1, type="l", col="black", ylab="Energy sub metering", xlab="")
    lines(x=data$Time, y=data$Sub_metering_2, col="red")
    lines(x=data$Time, y=data$Sub_metering_3, col="blue")
    
    legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
           lwd=c(2.5, 2.5, 2.5), col=c("black", "red", "blue"), bty="n")
}

plot.image3 <- function(data){
    plot(data$Time, data$Voltage, type="l", ylab="Voltage", xlab="datatime")
}

plot.image4 <- function(data){
    plot(data$Time, data$Global_reactive_power, type="l", ylab="Global_reactive_power", xlab="datatime")
}