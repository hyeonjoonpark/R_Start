install.packages("party", dependencies = T)
library(party)

model <- ctree(Species~., data=iris)
plot(model)