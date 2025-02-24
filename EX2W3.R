samplesize <- 200
meanX <- 50
meanY <- 51
sdX <- 5
sdY <- 5
pvalues <- vector(length=100)
effectSize <- abs(meanX - meanY) / sqrt( ((sdX*sdX)+(sdY*sdY)) / 2 )
effectSize
for(i in 1:100){
  
  x <- rnorm(samplesize, meanX, sdX)
  y <- rnorm(samplesize, meanY, sdY)
  
  p <- t.test(x,y, PAIRED=FALSE)
  
  pvalues[i] <- p$p.value
  
}
hist(pvalues, breaks=20)
length(pvalues[pvalues<0.05])

power.t.test(power = .80, delta = 0.5, type="two.sample")

pwr.t.test(n=100 , d = 0.5 , sig.level = 0.05 , type = c("two.sample"))

cor(rundata$FirstRun, rundata$SecondRun)
cor.test(rundata$FirstRun,rundata$SecondRun)
