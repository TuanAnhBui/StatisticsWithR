library(SDSFoundations)

world <-WorldBankData


table(world$IncomeGroup)
firstLowincome <- which(world$IncomeGroup=="Low income")[1]

firstLowincome

world$Country[firstLowincome]

aruba1970 <- world[world$Country=="Aruba"&world$year==1970,]

aruba1970$rural.population

australia <-world[world$Country=="Australia" & world$mobile.users>0,]

min(australia$year)
