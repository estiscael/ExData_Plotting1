read.data <- function() {
    analyze.data<-read.csv("analyzing_data.csv", na.string="?")
    
    analyze.data$Date<-strptime(analyze.data$Date, "%Y-%m-%d")
    analyze.data$Time<-strptime(paste(analyze.data$Date, analyze.data$Time), "%Y-%m-%d %H:%M:%S")
    analyze.data$Global_active_power<-as.numeric(as.character(analyze.data$Global_active_power))
    analyze.data$Global_reactive_power<-as.numeric(as.character(analyze.data$Global_reactive_power))
    analyze.data$Voltage<-as.numeric(as.character(analyze.data$Voltage))
    analyze.data$Global_intensity<-as.numeric(as.character(analyze.data$Global_intensity)) 
    analyze.data$Sub_metering_1<-as.numeric(as.character(analyze.data$Sub_metering_1))
    analyze.data$Sub_metering_2<-as.numeric(as.character(analyze.data$Sub_metering_2))
    analyze.data$Sub_metering_3<-as.numeric(as.character(analyze.data$Sub_metering_3))
    
    return(analyze.data)
}