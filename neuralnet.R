install.packages("neuralnet", dependencies = T)
install.packages("keras", dependencies = T)
library(keras)
library(neuralnet)

head(infert)

df <- infert[,2:6]
table(df$case)

model <- neuralnet(case~., data=df, hidden = c(2,3))
model
plot(model)

compute(model, df[1,])


