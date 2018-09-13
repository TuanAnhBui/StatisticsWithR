library(SDSFoundations)

bull <- BullRiders

dim(bull)

str(bull)

sum((bull$YearsPro>=10)[1:10])

first15 <-bull[bull$Rank15<=15,]

which(first15$BuckOuts14==min(first15$BuckOuts14))

first15$Rides14[4]

View(first15)

new_bull <- bull[bull$Events13>0,]
hist(new_bull$Rides13)
fivenum(new_bull$Rides13)
mean(new_bull$Rides13)
sd(new_bull$Rides13)

cor(new_bull$Rides13,new_bull$Top10_13)

hist(new_bull$Top10_13)
fivenum(new_bull$Top10_13)


plot(new_bull$Rides13,new_bull$Top10_13)

cor(new_bull$Rides13,new_bull$Top10_13)

which(new_bull$Top10_13==2 & new_bull$Rides13==22)

new_bull[4,]


###### Lab 3 questions 

hist(bull$Earnings12)

mean(bull$Earnings12)

max(bull$Earnings12)

plot(bull$Earnings12,bull$RidePer12)

cor(bull$Earnings12,bull$RidePer12)

plot(bull$Earnings12,bull$CupPoints12)

cor(bull$Earnings12,bull$CupPoints12)

which(bull$Earnings12 == max(bull$Earnings12))

bull$Rank12[8]

new_bull12 <- bull[bull$Events12>0,]

nooutliers<-new_bull12[new_bull12$Earnings12<1000000,]

vars <-c('Earnings12', 'RidePer12','CupPoints12')

cor(nooutliers[,vars])


### Statistics information in the year 2014

new_bull <- bull[bull$Rides14>0,]

new_bull$RidesPerEvent14 <- new_bull$Rides14/new_bull$Events14

View(new_bull)

hist(new_bull$RidesPerEvent14, breaks=10)

fivenum(new_bull$RidesPerEvent14)

plot(new_bull$RidesPerEvent14,new_bull$Rank14)

abline(lm(new_bull$Rank14~new_bull$RidesPerEvent14))

cor(new_bull$RidesPerEvent14,new_bull$Rank14)

######## Exercise 2

data <-data.frame(TimeSpent = c(30,	45,	180	,95,	130,	140,	30,	80,	60,	110,	0,	80),Grade = c(74,	68,	87,	90,	94,	84,	92,	88,	82,	93,	65,	90))

cor(data)

plot(data$TimeSpent,data$Grade)

new_data <-data[-7,]

cor(new_data)
68/109