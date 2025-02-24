ls()
new_name <- get("rundata(1)")  # Retrieve the object
assign("rundata", new_name)  # Rename it correctly
rm("rundata(1)") 
rundata$FirstRun
mean(rundata$FirstRun)
sd(rundata$FirstRun)
summary(rundata$FirstRun)

?hist
hist(rundata$FirstRun, main="Histogram of First Run", xlab="FirstRun", col="blue", border="black")

hist(rundata$SecondRun, main="Histogram of Second Run", xlab="SecondRun", col="red", border="black")

hist(rundata$FinalRun, main="Histogram of Final Run", xlab="FinalRun", col="green", border="black")


dens <- density(rundata$FirstRun)
plot(dens)

convertToFunc <- with(dens, splinefun(x,y)) 
integrate(convertToFunc, lower=20, upper=25)

shapiro.test(rundata$FirstRun)


plot(density(rundata$FirstRun), col="red")
lines(density(rundata$SecondRun), col="green")
legend("bottom", legend = c("First run","Second
run"), fill=c("red","green")) 

boxplot(rundata)
?boxplot

plot(rundata$FirstRun, rundata$SecondRun)
