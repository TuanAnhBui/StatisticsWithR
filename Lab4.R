library(SDSFoundations)

acl <- AustinCityLimits

View(acl)

sum((acl$Grammy=='Y')[1:10])

acl[which(acl$Age>60)[1],'Genre']

#Subset the data for artists age 30 or older
older <-acl[acl$Age>=30,]

# Create tables of marginal distributions
genre <- table(older$Genre)
genre
gender <- table(older$Gender)
gender

# Create contingency table 
twoway <- table(older$Gender,older$Genre)
twoway

# Visualize the counts
barplot(twoway, legend=T, beside=T)

# Calculate P(A): the probability of each genre being played
prop.table(genre)

# Calculate P(A|B): the probability of each genre being played, given the artist’s gender
prop.table(twoway,1)

############
table(acl$Gender)
males <-acl[acl$Gender=='M',]
table(males$Grammy)

twoway<-table(males$Grammy,males$Genre)
twoway

prop.table(table(males$Grammy))

prop.table(twoway,2)

############ Exericse

table(acl$Twitter.100k)

