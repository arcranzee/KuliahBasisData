nutfleex <- read.csv("E:/Semester 3 Ambis !/SBD/Tubes/Dataset R Tugas Besar Praktikum SBD 2020/Dataset R Soal No 4.csv", sep=";", stringsAsFactors=TRUE)

View(nutfleex)

library(rpart)
library(rpart.plot)

set.seed(1)
winner <- rpart(Award~Costs+Ratings+Views+TheaterDuration, data = nutfleex, method = 'class')

rpart.plot(winner, cex = 0.7)