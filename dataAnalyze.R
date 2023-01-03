dat <- c(5, 8, 9, 10, 11, 15, 16, 19, 21, 29, 120)
vec <- (dat - mean(dat))
vec
sum(vec)
log(3000) - log(1000) == log(30) - log(10)

log(3000) - log(1000)
log(30) - log(10)

library(ggplot2)
library(dplyr)
library(gapminder)
install.packages("gapminder", dependencies = T)

# gapminder: 연도별, 나라별 인구수를 나타낸 데이터프레임

# ggplot 데이터 시각화
# %>%: 파이프라인
gapminder %>%
  filter(year == 1952 & continent == "Asia") %>%
  ggplot(aes(reorder(country, pop), pop)) +
  geom_bar(stat = "identity") +
  scale_y_log10() +
  coord_flip()


head(iris)

iris$Sepal.Width
boxplot(iris$Sepal.Width)
outlier <- boxplot.stats(iris$Sepal.Width)$out
outlier

# 평균값
m <- mean(iris$Sepal.Width)

# 표준편차
s <- sd(iris$Sepal.Width)

# 정상치 범위, 벗어나면 이상치
range <- c(m - 3 * s, m + 3 * s)

iris$Sepal.Width[iris$Sepal.Width >= range[1] & iris$Sepal.Width <= range[2]]

2 / sum(1/100, 1/80)
`/`(`+`(100, 80), 2)

iris[, c(1, 2)] # 모든 row에서 1,2번째 column인 데이터프레임을 출력
iris[2:3, c("Sepal.Width", "Species")] # 2,3번째 row에서 column명이 Sepal.Width, Species인 column인 데이터프레임을 출력
iris[1:2,-5] # 1,2번째 row에서 5번째 column (Species)를 제외한 데이터프레임을 출력

df <- iris[iris$Sepal.Length >= 7, c(-1, -2)]
dim(iris)
nrow(iris)
ncol(iris)
colnames(iris)
tail(iris, 2)

dim(iris)[2]

unique(iris[, 5]) # 종류를 보여준다.
table(iris$Species) # 종류와 함께 개수도 보여준다.

colSums(iris[, -5])
colMeans(iris[, -5])
rowSums(iris[, -5])[1:2]
rowMeans(iris[, -5])[1:2]

# 속도는 subset이 더 빠름
subset(iris, Species == "setosa")
iris[iris$Species == "setosa", ]

head(airquality)
setwd('./')
write.csv(airquality, "air.csv", row.names=F)
air <- read.csv('air.csv', header = T)
air
head(air)
getwd()

grade = 'C'
if(grade == 'A') {
  bonux <- 2
} else if(grade == 'B') {
  bonux <- 1
} else {
  bonux <- 3
}
print(bonux)

# 엠퍼센트 한 개는 벡터 연산을 할 때 쓰고
# 엠퍼센트 두 개는 스칼라, 논리 연산을 할 때 쓴다.

a <- 10
b <- 20

# if문 안에 조건은 스칼라 값이 들어가야하기에 &가 하나만 들어가면 안된다.
if(a > 5 & b > 10) {
  print(a + b)
}

# 위에 코드보단 아래처럼 함수를 쓰는게 나음
ifelse(a > 5 && b > 10, a + b, -1)

gogodan <- 12345679
for(i in 2:9) {
  for(j in 1:9) {
    cat(i, "*", j, "=", i * j, "\n");
    # cat은 print와 다르게 comma를 쓸 수 있다.
  }
}

vec = 1:150

for(i in 1:nrow(iris)) {
  vec[i] <- ifelse(iris$Sepal.Length[i] < 5, "L", "H")
}

iris$Kind <- vec
vec
head(iris)


data(iris) # iris의 초기값으로 초기화
apply(iris[, -5], 1, mean)[1:16]

mul_n_times <- function(x, y) {
  return(x^y)
}

# 범주형 자료
# 연속형 자료

# 변수가 하나인 것은 단일변수, 2개 이상인 건 다중변수라고 한다.

favorite <- c(
  "SPRING", "SUMMER", "WINTER", "SUMMER", "SUMMER", "SPRING", "FALL",
  "FALL", "WINTER", "SPRING", "FALL", "FALL", "FALL", "SUMMER"
)
print(favorite)

table(favorite)
unique(favorite)
# 이런식으로 비율을 보여줄 수 있다.
table(favorite) / length(favorite)
round(table(favorite) / length(favorite), 2) * 100
(tabled_favorite <- table(favorite))
str(tabled_favorite)

# 바 형태로 출력
?barplot(sort(tabled_favorite, decreasing = T))
# 원그래프 형태로 출력
pie(sort(tabled_favorite, decreasing = T))

# ?를 붙이면 자세한 정보들을 다 보여줌
?pie(sort(tabled_favorite, decreasing = T))

hist(iris$Sepal.Length)

colnames(cars)
cars

boxplot(cars$dist, main="자동차 제동거리")

hist(cars$speed)

# (y축 변수 ~ x축 변수) 또는 (x축 변수, y축 변수)
boxplot(Petal.Length ~ Species, data = iris)

# 얘도 ?를 붙여서 정보를 볼 수 있음
?boxplot(Petal.Length ~ Species, data = iris)

boxplot(Petal.Length ~ Species, data = iris, notch = T)

boxplot(iris$Petal.Length, notch = T, col="skyblue")


colnames(mtcars)
head(mtcars)

plot(
  mpg ~ wt, data = mtcars,
  col="red", pch=19,
  main="산정도", xlab="무게", ylab="연비"
)

plot(
  mtcars$mpg ~ mtcars$wt,
  col="red", pch=19,
  main="산정도", xlab="무게", ylab="연비"
)

model1 <- lm(mtcars$mpg ~ mtcars$wt)
abline(model1)
cor(mtcars$mpg, mtcars$wt)


# pairs를 사용하면 숫자 컬럼 각각을 x, y축으로써 일일이 그래프를 그린다.
# 여기서 의미를 갖는 그래프는 선형 결합을 갖는 그래프 또는 각각의 그룹으로 분리할 수 았어보이는 그래프이다.
pairs(iris[-5])

plot(iris$Petal.Width, iris$Petal.Length, col=iris$Species, pch=20)

# 데이터는 의미를 찾아내는 것이 중요하다.

bears <-  c(5, 2, 9, 8, 3, 7, 3, 5, 3, 5)
bal <- c(0.1, 0.03, 0.19, 0.16, 0.04, 0.05, 0.07, 0.06, 0.02, 0.05)
df <- data.frame(bears, bal)
head(df)
?plot(bal ~ bears, col="orange", pch=20)
model <- lm(bal~bears, data=df)

abline(model, col="green", lw=3)
cor(df$bears, df$bal)


6 + 10
x <- 1:9
y <- 99
print(x)

log(10)
25^(1/2)
6 + 10
`+`(6, 10)

ifelse(1 > 2, 'big', 'small')
max(5, 4, 2)

a <- 10
b <- 20
c <- `+`(a, b)

# c는 concatenate, conbinate의 약자이다.
x <- c(1, 2, 3)
y <- c("a", "b", "c")
z = c(T, F, T, T, F) # = 를 써도 되지만 <-를 권장함

c('a', 'b', 'c') -> z # 이렇게 반대로도 쓸 수 있기 때문
z

# 이렇게 쓰면 안됨 (벡터는 동일한 자료형을 저장해야함)
w <- c(T, 1, "a")
w

a <- 1:1000 # 1부터 1000까지의 연속된 숫자 벡터를 반환함
b <- c(1, 3, 5, 10:15)
b

# seq는 첫번째 수부터 끝수까지 단계만큼 띄운 연속된 벡터를 반환한다.
v3 <- seq(1, 20, 3)
v3
v3 <- seq(0, 1000, 0.01)
v3
# rep은 첫번째 인자를 time만큼 반복한 벡터를 반환한다.
v4 <- rep(1, time = 5)
v4
# each는 각각의 요소를 each만큼 반복한 벡터를 반환한다.
v4 <- rep(c(1,3,5), each=3)
v4
v4 <- rep(1:3, 5)
v4


score <- c(90, 80, 70)
# names는 벡터에 각각의 요소에 이름을 지정해준다. 계산에 관여하지 않는다.
names(score) <- c("홍길동", "이순신", "김요한") # 쓰임새는 많지 않다.
score

d <- c(1,4,6,9)
d[2]
d[5]
d[c(1, 3, 4)]
d[2:4]
d[-2] # 파이썬과 다르게 -는 그 값을 빼고 갖고 오라는 의미이다.
d[-c(1, 3)]



gnp <- c(1, 2, 3)
names(gnp) <- c("name1", "name2", "name3")
# 이름을 주면 이름으로 접근가능하다
gnp["name1"]
gnp["name2"]


a <- c(1, 3, 5, 6)
a
a[2] <- 9 # 2번째 값을 9로 바꿈
a[c(3, 4)] <- c(1, 2) # 3, 4번째 값을 1, 2로 바꿈
a

letters
kiss <- c(letters[11], letters[9], letters[19], letters[19])
kiss

dog <- c(letters[4], letters[15], letters[7])
dog
korea <- c(letters[11], letters[15], letters[18], letters[5], letters[1])
korea
letters

x <- c(1, 4, 3, 7, 8)
x
# 각각의 요소에 2를 곱함
x * 2
x * c(2, 2, 2, 2, 2) # 위에 코드는 내부적으로 이렇게 작동됨
x * c(2, 3, 4, 5, 6)

x <- c(1, 2, 3)
y <- c(4, 5, 6)
# 각각 연산된다.
x + y
x - y
x * y
x / y


x <- 1:10
sum(x)
mean(x[1:9])
sd(x)
var(x)
sort(x, decreasing = T)
length(x)

x <- 1:10
# 논리연산 또한 각각 연산함
x >= 5
x[x>=5]

x <- 10:50
x[x >= 40]

x <- 1:10
sum(x > 5)

# Data Type
# - numeric
# - character
# - logical

# Data Structure
# - vector (1차원)
# - matrix (2차원) 모든 데이터가 동일한 타입이여야함
# - data-frame 컬럼의 타입만 같으면 됨



# 메트릭스

m <- matrix(1:20, nrow = 5, ncol = 4)
m

n <- matrix(1:20, nrow=4, ncol=5)
n

m <- matrix(1:10, nrow = 5, ncol = 4)
m

(m1 <- matrix(1:20, nrow = 4, ncol = 5))
(m1 <- matrix(1:20, nrow = 4, ncol = 5, byrow = T))


# 벡터로도 메트릭스를 만들 수 있다.
x <- 1:4
y <- 5:8
# 열기준으로 붙인다.
cbind(x, y)
# 행기준으로 붙인다.
rbind(x, y)


(x <- matrix(1:20, ncol = 5))
x[3, 4]

x[3, ]
x[, 2]

x[,2]
x[,4]

x[2:3, c(2, 4, 5)]

(x <- matrix(1:4, ncol=2))

rownames(x) <- c("row1", "row2")
colnames(x) <- c("col1", "col2")
x

x[1, c("col1", "col2")]



# 데이터 프레임

city <- c("seoul", "washington", "hongkong")
ranking <- c(1, 3, 2)

(df <- data.frame(city, ranking))
str(df)

# 기본적으로 위에서부터 6개
head(iris)
# 기본적으로 밑에서부터 6개
tail(iris, 3)
# str(iris)에서 나오는 Factor는 정해진 문자열을 정의할 때 쓴다.
str(iris)

# data frame에서 $를 이용해서 column을 짤라올 수 있다.
# vector와 달리 column 이름이 가치있는 타입이다.
sd(iris$Sepal.Length)
iris_sp = iris$Sepal.Length

# & 로 조건을 더 추가해줄 수 있다.
# Or은 | 를 쓴다.
iris[iris_sp < 5 & iris$Petal.Length > 3 , ]


