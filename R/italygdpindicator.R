

#import data----
library(ggplot2)
sf<-system.file("extdata","IMEXP.csv",package = "mypackage")
print(sf)
data<-read.csv(sf)
print(data)

year<-c(2000:2018)
# importdata <-data[1,][4:22]
importdata<- c(as.numeric(data[data[,"Indicator"]== "import" ,][4:22]))
italyimports<-data.frame(year,importdata)
# ggplot(italyimports, aes('wt', 'mpg')) + geom_line()
plot(italyimports)




print(years)
print(data)
year<-c(2000:2018)
importdata <-data[2,][4:22]
italyexports<-data.frame(year,importdata)
importdata<- c(as.numeric(data[data[,"indicator"]=="export"][4:22]))
plot(italyexports)

