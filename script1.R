
# Simple assignment operators 
# These three operations do the same thing:
x = "a"
x <- "a"
"a" -> x

#vectors: 
# - one or more elements
# - one data type

v0 = 1:4 
v0

#everything is a vector
#weak typed language, can check class type with:
class(x)
class(v0)
is.vector(x)
is.vector(v0)
#getting the length
length(v0)

v1  = c(1,2,3,8,4) #c() is the concatenation function, makes a vector
v1[3:5]
v1[c(1,3,4)]
v1[c(T,F,F,F,T)]

#matrix examples
m1 = matrix( data=1:12, nrow=3 )

m2 = cbind( 1:10, (1:10)^2 )
class(m2)
#finding the dimensions:
dim(m2)

#naming dimensions:
colnames(m2)<-c("James","Ted")

#gotchya:
test1 = m2[,"James"] #The output from this is a vector. To keep the matrix data type, use drop=FALSE
#error
test1[1:2,"James"]
#the type changed:
print(test1)
is.vector(test1)
#the correct way
test2 = m2[,"James",drop=FALSE]
print(test2)
test2[1:2,"James"]

#basic plotting

plot(m2)

#if the columns were not named:
colnames(m2)<-NULL
plot(m2)

#name the dimensions
plot(m2, xlab="j numbers", ylab="t numbers", main="Plot 2")

sdat = read.table("./injuriesVsWrithingTimeVsRegion.txt", header=T, sep="\t") #see also read.csv()

#ggplot example:
install.packages('ggplot2')
library('ggplot2')
ggplot(data=sdat, aes(x=Injuries, y=Time))+
	geom_point()


#map data to visual elements
ggplot(data=sdat, aes(x=Injuries, y=Time, color=Region))+
	geom_point()

sdat$Region <- factor(sdat$Region, levels=c("Australia", "Middle.East","Africa", "Asia",  
																						"C.America","N.America","S.America", "Europe"))

ggplot(data=sdat, aes(x=Injuries, y=Time, color=Region))+
	geom_point()
