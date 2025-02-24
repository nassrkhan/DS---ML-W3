#Exercise 2
#1. The data frame() function:
x <- data.frame(names= c("ben", "joe", "steve"), ages= c(31, 24, 45))
nrow(x)
ncol(x)
str(x)
x$names
data()
x <-mtcars
?mtcars
boxplot(mtcars$mpg)
hist(mtcars$mpg)
dev.off()
par(mar=c(5, 4, 4, 2))
boxplot(mtcars$mpg[mtcars$am==1], main="Auto Cars")
boxplot(mtcars$mpg[mtcars$am==0], main="manual cars")
boxplot(mtcars$mpg~mtcars$am)

#2. Ggplot visualisations
install.packages("ggplot2")
library(ggplot2)
p <- ggplot(mtcars, aes(factor(am), mpg))
p + geom_boxplot()
p <- ggplot(mtcars, aes(factor(am), mpg))
p + geom_boxplot() + geom_jitter(width = 0.2)
p <- ggplot(mtcars, aes(factor(am), mpg))
p + geom_boxplot(aes(colour = factor(vs)))
