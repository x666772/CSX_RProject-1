### hw_1_answers


########################################################### Task 1

#鳶尾花(iris)資料集
(iris)

#回傳iris的列數與欄數
dim(iris)

#回傳iris的前六列 
head(iris,N=6)

#回傳iris的後六列
tail(iris,N=6) 

#str()列出資料內每個欄位的狀態
str(iris) 

#summary()給出敘述性統計、類別型資料概述
summary(iris) 

########################################################### Task 2

# 使用for loop 印出九九乘法表
# Ex: (1x1=1 1x2=2...1x9=9 ~ 9x1=9 9x2=18... 9x9=81)
# cat()函数可以將多個變量連接起来並输出到控制台或者File文件中

for(x in 1:9){
  for(y in 1:i){
    z = x*y
    cat(x,'*',y,'=',z,' ')
  }
  cat('\n')
}

# 用一行程式碼寫九九乘法
sapply(1:9,function(x) x*1:9)

1:9%*%t(1:9)

########################################################### Task 3

# 使用sample(), 產出10個介於10~100的整數，並存在變數 nums
nums <- sample(x = c(10:100), size=10)
# 查看nums
nums

# 1.使用for loop 以及 if-else，印出大於50的偶數，並提示("偶數且大於50": 數字value)
# 2.特別規則：若數字為66，則提示("太66666666666了")並中止迴圈。
  
for(i in c(1:100)){

if(i >= 50 && i%%2 == 0){
    print(paste(i,"偶數且大於50"))
  }
if (i == 66){
  print("太66666666666了") 
    break
  }}




########################################################### Task 4

# 請寫一段程式碼，能判斷輸入之西元年分 year 是否為閏年

year=readline('請輸入任意西元年分：')
m <- as.numeric(year)
y<- function(m)

# 公元年分除以4可整除但除以100不可整除，為閏年。
# 公元年分除以400可整除但除以3200不可整除[來源請求]，為閏年。
{ 
  if((( y %% 4 == 0 )&( y %% 100 != 0 ))){
    return("為閏年")
  }
  
  
  
  else if (( y %% 400 == 0 )&( y %% 3200!= 0 )){
    return("為閏年")
  }else
    return("不是閏年")
}


