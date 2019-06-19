#R programming
#11.06.2019
#by Yusuf Kaymaz
#Assignment
> x<-1
> 1->x
> x=3
> x
[1] 3
> y<-c(1,2,3)
> y
[1] 1 2 3
#y is a list.

#List all assignment in memory.
> ls()
> objects()
> x

#Arithmetic operations
> 1+2
[1] 3
> 1*2
[1] 2
> 3^2
[1] 9

#Remove assignments from memory
> rm(x)
> ls()
character(0)

#Sequence lists
> x<-1:5
> x
[1] 1 2 3 4 5 
> x<-5:1
> x
[1] 5 4 3 2 1
> x<-5:2
> x
[1] 5 3 2
> x<-seq(5,1,by=-0.5)
> x
[1] 5.0 4.5 4.0 3.5 3.0 2.5 2.0 1.5 1.0
> seq(1,9,by=2)->x
> x
[1] 1 3 5 7 9
 
#Repeat some assignments
> y<-rep(x,times=2)
> y
 [1] 1 3 5 7 9 1 3 5 7 9

#Logical operators (Compare statement)
> x<-3
> x<5
[1] TRUE
> x<2
[1] FALSE
> x!=3
[1] FALSE