x <- matrix(1:20, nrow = 10, ncol = 2)
apply(x, 2, mean)
rowSums <- apply(x, 1, sum)
rowMeans <- apply(x, 1, mean)
colSums <- apply(x, 2, sum)
colMeans <- apply(x, 2, mean)
apply(x, 1, quantile, probs = c(0.25, 0.75))

# Factor
?factor
x <- factor( c("yes", "yes", "no", "yes", "no") )
x

#The table function:
x <- factor( c("yes", "yes", "no", "yes", "no") )
table(x)

#The tapply() function:

ages <- c(25,26,37,56,42,25)
affill <- factor(c('U', 'R', 'R','D', 'D', 'U'))
tapply(ages, affill , mean)
tapply(ages, affill , range)

#5. Handling missing values
x <- c(25,26,NA,56,42,25)
is.na(x) 
is.nan(x)
x <- c(1, 2, NA, 10, 3)
is.na(x)

#6. Data cleansing of missing values:
x<- c(1, 2, NA, 10, 3)
x[is.na(x)] <- 0
x <- c(1, 2, NA, 10, 3)
x[is.na(x)] <- mean(x)

x <- c(1, 2, NA, 10, 3)
mean(x)
mean(x, na.rm=TRUE)


  