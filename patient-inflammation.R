install.packages("readr")
library("readr")
data01 <- read.csv("data/data/inflammation-01.csv", header = FALSE, sep = ',')
data01
class(data01)
dim(data01)
data01[c(1:4), c(1:10)]
data01[c(5:10), c(1:10)]
#first row, all of the columns
patient_1 <- data01[1, ]
patient_1
#max inflammation for patient 1
sum(patient_1)

max(data01[1, ])
mean(data01[1, ])

mean(as.numeric(data01[1, ]))

avg_patient_inflammation <- apply(data01, 1, mean)
avg_day_inflammation <- apply(data01, 2, mean)

plot(avg_day_inflammation)

max_day_inflammation <- apply(data01, 2, max)
plot(max_day_inflammation)

