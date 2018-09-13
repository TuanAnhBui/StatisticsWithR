library(SDSFoundations)

WR<-WorldRecords

View(WR)

unique(WR$Event)

UsainBolt<- WR[WR$Event=="Mens 100m"&WR$Athlete=="Usain Bolt",]

min(UsainBolt$Year)

firstwoman <- (WR[WR$Event=="Womens Mile"&WR$Record<260,])[1,]$Athlete 

firstwoman


#Subset the data
menshot <- WR[WR$Event=='Mens Shotput',]
womenshot <- WR[WR$Event=='Womens Shotput',] 

#Create scatterplots
plot(menshot$Year,menshot$Record,main='Mens Shotput World Records',xlab='Year',ylab='World Record Distance (m)',pch=16)
plot(womenshot$Year,womenshot$Record,main='Womens Shotput World Records',xlab='Year',ylab='World Record Distance (m)',pch=16)

#Run linear models
linFit(menshot$Year, menshot$Record)
linFit(womenshot$Year,womenshot$Record)

##### Lab questions

menMile <-WR[WR$Event=="Mens Mile",]
View(menMile)
womenMile <-WR[WR$Event=="Womens Mile",]
View(womenMile)
plot(menMile$Year,menMile$Record)
plot(womenMile$Year,womenMile$Record)

linFit(menMile$Year,menMile$Record)
linFit(womenMile$Year,womenMile$Record)

#### Exercises

menPolevault1970 <-WR[WR$Event=="Mens Polevault"&WR$Year>=1970,]
View(menPolevault1970)
max(menPolevault1970$Record)

exceed6m <-which(menPolevault1970$Record>6)
menPolevault1970$Year[exceed6m[1]]

plot(menPolevault1970$Year,menPolevault1970$Record)
linFit(menPolevault1970$Year,menPolevault1970$Record)
