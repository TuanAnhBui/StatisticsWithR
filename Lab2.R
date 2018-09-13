library(SDSFoundations)

animaldata <-AnimalData

table(animaldata$Outcome.Type)

adopted <- animaldata[animaldata$Outcome.Type=="Adoption",]

daystoadopt <- adopted$Days.Shelter

hist(daystoadopt)

fivenum(daystoadopt)

mean(daystoadopt)

sd(daystoadopt)

males <-animaldata[animaldata$Sex=="Male",]

longest <- which(adopted$Days.Shelter==max(daystoadopt))

adults<-animaldata[animaldata$Age.Intake>=1,]

table(adults$Animal.Type)

adult.Dogs <-adults[adults$Animal.Type =="Dog",]

hist(adult.Dogs$Weight, breaks = 15)

adult.Cats <-adults[adults$Animal.Type =="Cat",]

hist(adult.Cats$Weight, breaks = 15)

mean(adult.Cats$Weight)

sd(adult.Cats$Weight)

zcat<-(13-mean(adult.Cats$Weight))/sd(adult.Cats$Weight)

1-pnorm(zcat)

fivenum(adult.Dogs$Weight)

dogs <-animaldata[animaldata$Animal.Type=="Dog",]

table(dogs$Intake.Type)

surrender <- dogs[dogs$Intake.Type=="Owner Surrender",]

table(surrender$Outcome.Type)

returnToOwner <-surrender[surrender$Outcome.Type=="Return to Owner",]

mean(returnToOwner$Days.Shelter)
