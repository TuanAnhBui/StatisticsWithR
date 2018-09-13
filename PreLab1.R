# This is the code for Pre-Lab 1 

# Read bike data from file since the SDSFoundations package 
# is not available for R version 3.2.2

BikeData <- read.csv("BikeData.csv")

BikeData$age[7]

sum(BikeData$cyc_freq[1:10]=="Daily")

lessthan_fem <-which(BikeData$gender=="F" & BikeData$cyc_freq == "Less than once a month")

BikeData$speed[lessthan_fem[1]]

str(BikeData)

table(BikeData$student)

student <-BikeData[BikeData$student==1,]

distance <-student$distance

daily_rider <-BikeData[BikeData$cyc_freq=="Daily",]

table(daily_rider$gender)

mean(daily_rider$age)

males <-daily_rider[daily_rider$gender=="M",]
females <-daily_rider[daily_rider$gender=="F",]
mean(females$age)
mean(males$age)

thirsty <-males[males$age>=30,]
table(thirsty$cyc_freq)
