install.packages("rgl")
library(rgl)


# d <- as.data.frame( matrix( 1:(3*4*5), 12, 5))
# array( unlist(d), dim=c(3, 4, 5) ) 

plot3d(3,2,1, col = rainbow(1000), xlim = c(-4,4), ylim = c(-4, 4), zlim = c(-2, 2))
abclines3d(3,2,1, a = diag(3), col = "black")

x1<- 0:10
x1

x2 <- 10:1
x2

x3<- seq(10)
?seq
x4 <- seq(0,10,by= 2)

x5<- c(1800, 1850,1900,1930,1940)
x5
?c
rm(list = ls())
zerograde.txt<- read.table("Rtest.txt", header = TRUE)
install.packages("scatterplot3d")
require("scatterplot3d")

scatterplot3d(zerograde.txt)
s3d<- scatterplot3d(zerograde.txt,
                  pch=10,
                  highlight.3d=TRUE,
                  type="h",
                  main="0% Grade")

plane<- lm(zerograde.txt$Capacity ~ zerograde.txt$Grade + zerograde.txt$X.HV)
s3d$plane3d(plane)
  
RTestOne.txt<- read.table("RTestOne.txt", header = TRUE)
scatterplot3d(RTestOne.txt)
s3d<- scatterplot3d(RTestOne.txt,
                    pch=10,
                    highlight.3d=TRUE,
                    type="h",
                    main="Heavy Vehicle's Effect on Capacity")


capacities.txt<- read.table("Capacities.txt", header = TRUE)


install.packages("scatterplot3d")
require("scatterplot3d")
scatterplot3d(capacities.txt)
s3d<- scatterplot3d(capacities.txt,
                    pch=10,
                    highlight.3d=TRUE,
                    type="h",
                    main="Capacities")

#independent
Capacity <- c(1900,1900,1890,1870,1865,1910,1900,1890,1880,1870,1900,1870,1860,1860,1850,1900,1840, 1830, 1810,1800,1910,1780,1770,1750,1710)

#dependent
Grade <- c(0,2,4,6,8,0,2,4,6,8,0,2,4,6,8,0,2,4,6,8,0,2,4,6,8)
HeavyVehicle <- c(0,5,10,15,20,0,5,10,15,20,0,5,10,15,20,0,5,10,15,20,0,5,10,15,20)

Regression<- lm(Capacity ~ Grade + HeavyVehicle)
summary(Regression)
