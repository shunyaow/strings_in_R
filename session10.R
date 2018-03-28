library(stringr)
#1
print("DSO")
print("\"")
cat("\"")

cat("DSO\n\545")
cat("DSO\n\545")

#2
cat(":-\\")
cat("(^_^\")")
cat("@_'-'")
cat("\\m/")
cat("(a)")

#3
?str_locate

#4
str_locate(string="great",pattern="a")
str_locate_all("fantastic","a")
str_locate("super","a")

str_locate(c("fantastic","great","super"),
           pattern="a")
#5
str_sub(string="testing",start=4,
        )

#6
input<-c("abc","defg")
str_sub(input,c(2,3))

#7
emails<-readRDS("email.rds")

emails[1]
cat(emails[1])
str_locate(emails[1],pattern="\n\n")

header=str_sub(emails[1],
               start=1,
               end=842)
cat(header)

body=str_sub(emails[1],
             start=843)
cat(body)


str_locate(emails,"\n\n")
#10
breaks=str_locate(emails,"\n\n")
headers=str_sub(emails,
                end=breaks[,1])

bodies=str_sub(emails,
               start=breaks[,2])
cat(bodies[6])

#second lab
#1
fruit=c("apple","banana","pear","pineapple")
#2
#detects if the pattern is found
str_detect(fruit,"a")
#pattern starts with a
str_detect(fruit,"^a")
str_detect(fruit,"a$")

#pattern to check if it has a or e or i or o or u
str_detect(fruit,"[aeiou]")
#a or b or c or d
str_detect(fruit,"[a-d]")
#if it has a number
str_detect(fruit,"[0-9]")

#3
str_detect(fruit,"^a[a-z]*e$")
#. could be any character or number
str_detect(fruit,"^a.e$")

#4
phone=c("213 740 4826",
       "213-740-4826",
       "(213) 740 4826")
str_detect(phone,"[(]?[0-9]{3}[)]?[ -] [0-9]{3}[ -][0-9]{4}")

#5


