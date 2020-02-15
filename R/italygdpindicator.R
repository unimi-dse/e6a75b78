

#import data----

sf<-system.file("extdata","IMEXP.csv",package = "mypackage")
print(sf)
data<-read.csv(sf)
print(data)

year<-c(2000:2018)

#Import
importdata<- c(as.numeric(data[data[,"Indicator"]== "import" ,][4:22]))
italyimports<-data.frame(year,importdata)
p1 <- ggplot2::ggplot(italyimports, ggplot2::aes(year, importdata) ) + ggplot2::geom_line()
p1

#Export
exportdata<- c(as.numeric(data[data[,"Indicator"]=="export",][4:22]))
italyexports<-data.frame(year,exportdata)
p2 <- ggplot2::ggplot(italyimports, ggplot2::aes(year, importdata) ) + ggplot2::geom_line()
p2

