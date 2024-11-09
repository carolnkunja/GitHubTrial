#Writing text to reflect on the console

helloworld = "hello world"
helloworld

#Assigning values to create variables

a = 5
b = 7
c = a + b
a
b
c

#Logical tests
a == b
c > a + b
c == a - b

#Overwriting variables
b = c + a
b



##############################    VECTORS   ################################
### Vectors have one dimension that represents some concept or fact 
### about the world. Examples include age, height, eye color, 
### GDP per capita, and war initiation.

#CREATING VECTORS
# Numeric vectors 
n1 <- 20
n1

# Character vectors
c1 <- "Blue"
c1

# Logical vectors
l1 <- TRUE
l1

#Creating vectors with more than one element
#Using c() - concatenation

n2 <- c(20, 25, 50, 55)
n2
c2 <- c("red", "green", "blue")
c2
l2 <-  c(TRUE, FALSE, TRUE)
l2

#Using seq()
#seq() applies to numeric vectors only
#seq() by default takes three parameters: starting value, 
#end value, and a value that specifies how elements will be 
#incremented ("by"), which can be substituted with "length.out". 
#Integer sequences can be created using a colon.

n3 <- seq(1, 10, 1)
n3
n4<- seq(1:10)
n4
n5 <- seq(from = 1, to = 10, length.out = 5)
n5

#Using rep()
#Vectors can also be created using rep(). 
#As the name implies, this function is useful if you want to repeat an element or elements.
#The first parameter in the function specifies the element to repeat, 
#and the second the number of times to repeat it.

rep(1, 5)
rep ("Blue", 3)
rep(TRUE,4)

#Using more than one function
rep(c("blue", "red"), 3)
c(rep(seq(0, 6, 2), 2), 4:1) 
#s <- rep(seq(0, 6, 2), 2)
#c(s, 4:1)

###### SUBSETTING VECTORS
#The process of extracting a number of elements from a vector or a dataset.
fruits <- rep(c("apple", "banana", "orange", "pear", "kiwi"), 6)
fruits
# Create a logical vector for dropping bananas
# Note: I'm creating the exact same logical vector three times (overriding it each time)
# This is for illustrative purposes; using one of these is sufficient
lv1 <- fruits == "orange" | fruits == "apple"
lv1
lv2 <- fruits != "banana"
lv2
lv3 <- fruits %in% c("orange", "apple")
lv3
fruits[lv1]
fruits[lv2]
fruits[lv3]
#General note about %in%: This operator is extremely useful as an alternative 
#for repeated "or" (|) statements. 
#For example, say you have a vector with 10 types of fruits and you want to 
#keep elements that are equal to "orange", "apple", "mango", "mandarin", or "kiwi". 
#You could accomplish this by creating a logical vector like so: 
lv <- fruits == "orange" | fruits == "apple" | fruits == "mango" | fruits == "mandarin" | fruits ==
 "kiwi"
lv
#What a nighmarishly long statement compared to the %in% option that accomplishes the 
#exact same thing: 
lv <- fruits %in% c("orange", "apple", "mango", "mandarin", "kiwi").

# Create a numeric vector
numbers <- seq(0, 100, by = 10)
numbers
# Illustrate three different filters
numbers[numbers <= 50 & numbers != 30]
numbers[numbers == 0 | numbers == 100]
numbers[numbers > 100] #returns an empty vector

##SUBSETTING USING INDEXING
#Uses the index or indices of the element or elements in the vector to know which element to keep.
fruits <- rep(c("orange", "apple", "banana"), 10)
fruits[c(10, 20)]
#A very manual method and requires knowledge of the index of the item required.
#Also useful for probabilstic experiments, for pulling out sample elements to run in the experiment.E.g:
seq(1:100)
sample(1:100,size = 10)
fruits <- rep(c("apple", "banana", "orange"),40)
fruits
fruits[sample(1:120, size = 5)]

###SUBSETTING USING NAMES
#Involves assigning names to each element and taking asubset based on the names
age <- c(50, 55, 80)
names(age) <- c("mom", "dad", "grandpa")
age #note that values now have names 
age[c("dad", "grandpa")] #subset

#MODIFYING VECTORS
numbers <- 1:10
numbers
# One value modifying all values in a vector 
numbers <- numbers / 10
numbers 
# One value modifying a subset of a vector 
numbers[numbers > 0.5] <- numbers[numbers > 0.5] * 100
numbers
# Two vectors with the same number of elements 
numbers1 <- 1:10
numbers2 <- 10:1
numbers3 <- numbers2 - numbers1
numbers3
# Replacing a subset of a vector using another vector
numbers <- 1:10
numbers[numbers > 5] <- 5:1
numbers
# Modify a vector (or a subset of a vector) using a function
numbers <- 1:10
sqrt(numbers) #square root
exp(numbers) #exponentiate
log(numbers[c(1, 5, 10)]) #natural log

#SUMMARIZING VECTORS
numbers <- sample(1:1000, 10)
numbers
class(numbers) #check the class
length(numbers) #number of elements 
max(numbers) #maximum value
min(numbers) #minimum value
sum(numbers) #sum of all values in the vector
mean(numbers) #mean
median(numbers) #median
var(numbers) #variance
sd(numbers) #standard deviation
quantile(numbers) #percentiles in intervals of .25 
quantile(numbers, probs = seq(0, 1, 0.1)) #percentiles in invervals of 0.1
summary(numbers) #function that contains many summary stats from above


#EXERCISES
#Create a vector that represents the age of at least four different family 
#members or friends. You can name it whatever you want.
age <- c(10, 20, 30, 40)
names(age) <- c("ckay", "liz", "lizzie", "beryl")
age
mean(age)#mean age
quantile(age)
min(age)#minimum age
max(age) #oldest person
ageDiff <- max(age) - min(age)#Age difference between oldest and youngest person
ageDiff
c <- age>25
length(age[age>25])#number of people with age greater than 25
kim <- age[4]
kim
age
names(age) <- c("ckay", "liz", "lizzie","kim")#Replacing name of the oldest
age
age2 <- age+10 #Age of each in 10 years
age2
age3 <- 100 - age #Year in which each will turn 100 years
age3
age4 <- age[sample(1:4, size = 3)]
age4
mean(age4)#mean of a random sample of ages from age vector

git init

