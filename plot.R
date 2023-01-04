month <- 1:12
late <- c(2, 5, 7, 1, 9, 12, 15, 18, 10, 2, 3, 1)
length(late)
plot(x=month, y=late, 
     lty = 'dashed', lwd = 5,
     type="l", col="darkblue",
     ylim=c(0, 20))

late2 <- c(4, 1, 9, 10, 2, 2, 1, 3, 6, 2, 1, 1)
lines(x=month, y=late2,
      lty="solid", col="purple", lwd=5, ylim=c(0, 15))


morning <- rnorm(100000, mean=6, sd=1)
length(morning)
hist(morning)


head(iris)
dim(iris)
idx <- sample(1:NROW(iris), NROW(iris)*0.7, replace = F)
iris[idx, ]
