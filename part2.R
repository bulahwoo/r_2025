library(dplyr)

breed <- sample(c("Ragdoll", "British shorthair", "Persian", "Bengal", "American shorthair"), 30, replace = T)
weight <- runif(30, 2, 20) %>% round(digits = 1)
length <- runif(30, 40, 105) %>% round(digits = 1)
age <- runif(30, 0, 10) %>% round(digits = 1)
residence <- sample(c("Czech", "Italy", "Norway"), 30, replace = T)
health <- sample(c("Great", "Okay", "Excellent", "Bad"), 30, replace = T)
food <- sample(c("Dry", "Wet"), 30, replace = T)
  
catdata <- data.frame(breed, weight, length, age, residence, health, food)
getwd()
write.table(catdata, file = "catdata.tsv", quote = F, sep = "\t", row.names = F, col.names = T)

catdata %>% arrange(health)

catdata[,6]
as.factor(catdata[,6])

edit_catdata <- catdata

edit_catdata[,6] <- factor(edit_catdata[,6], levels = c("Bad", "Okay", "Great", "Excellent"))

catdata
edit_catdata

str(catdata)
str(edit_catdata)


