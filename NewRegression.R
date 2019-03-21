Capacity <- read.table("Capacity R studio.csv", header = TRUE,
                       sep = ",",
                       stringsAsFactors = FALSE)
#Capacity$Cap is like dot product in C#, or use data=Capacity at end) 

Regression<- lm(Cap~ X.Grade + X.HV, data=Capacity)
summary(Regression)