plot3 <- function(){
    source("read.data.R")
    data<-read.data()
    
    png(file="plot3.png", width = 480, height = 480)
    plot(data$Time, data$Sub_metering_1, type="l", col="black", ylab="Energy sub metering", xlab="")
    lines(x=data$Time, y=data$Sub_metering_2, col="red")
    lines(x=data$Time, y=data$Sub_metering_3, col="blue")
    
    legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
           lwd=c(2.5, 2.5, 2.5), col=c("black", "red", "blue"))
    dev.off()
}