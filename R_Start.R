6 + 10
x <- 1:9 # 변수 선언
y <- 99
print(y)

install.packages("ggplot2", dependencies = TRUE) # ggplot2 패키 다운로드


sqrt(25)
sum(6, 10)
`+`(6, 10)

ifelse(1 > 2, 'big', 'small') # if else

x <- c(1, 2, 3) # 백터 = 배열(동일한 데이터 타입)
y <- c("a", "b", "c")
z <- c(T, F, F, T)
x
y
z



c("a", "b", "c") -> w
w



a <- c(1:1000)
a



v1 <- seq(1, 20, 3) # 1부터 20까지 3씩(1 4 7 10 13 16 19)
v1


vv1 <- rep(1, times = 5) # 1을 5번 반복
vv1



vv2 <- rep(c(1, 3, 5), each=3) # 각각 3번씩 반복(1 1 1 3 3 3 5 5 5 )
vv2



score <- c(90, 80, 70)
names(score)
names(score) <- c("A", "B", "C") # 각각의 백터값의 이름 지정
score



index <- c(1, 4, 6, 8) # 백터 추출(slicing(python))
index[1]
index[4]


li <- c(1, 4, 8, 9)
li[c(1, 3, 4)] #list의 1, 3, 4 번째의 값 가져오기
li[-c(2, 3)] #list의 2, 3번째의 값 제외하고 가져오기



ch <- c(1, 3, 5, 7)
ch[c(3, 4)] <- c(10, 20) #ch의 3, 4번째 값을 10, 20 으로 바꾸어라
ch


letters
letters[c(11, 9, 19, 19)] #"k" "i" "s" "s"



vec_math <- c(1, 4, 3, 7, 8)
2 * vec_math # 각각의 값을 2와 곱한다 => c(1, 4, 3, 7, 8) * c(2, 2, 2, 2, 2) 같은 위치끼리 연산



function_vec <- 1 : 10
function_vec
sum(function_vec)
mean(c(1: 7))
sort(function_vec)
sort(function_vec, decreasing = T) #반대로 큰수부터 정렬


L_vec <- 1: 10
L_vec >= 5
L_vec[L_vec >= 5]
sum(L_vec[L_vec >= 5])


vec <- 10:50
vec[vec>=40]
vec[vec!=40]
vec[vec>20 & vec<30]


