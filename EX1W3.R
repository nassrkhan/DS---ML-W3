population <- rnorm(1000, 52, 40)
samplemeans <- vector(length=100)
sampleSDs <- vector(length=100)
for(i in 1:100){
  y <- sample(population, i*10)
  
  samplemeans[i] <- mean(y)
  sampleSDs[i] <- sd(y)
}

plot(samplemeans)
abline(h=52)

plot(sampleSDs)
abline(h=40)

