#R programming 
#14.06.2019 
#by Yusuf Kaymaz

#Reading From File
??read.table
read.table(file="D:/R-3.5.2/bin/dosya/deneme.csv",sep=";")
   V1 V2 V3
1   1  5  2
2   2  3  4
3   3  3  6
4   4 10  8
5   5 32 10
6   6 10 12
7   7 20 14
8   8 15 16
9   9 25 18
10 10 20 20
11 11  4 22
12 12 20 24
13 13 15 26
14 14 10 28
15 15 15 30
16 16  8 32
> x<-read.table(file="D:/R-3.5.2/bin/dosya/deneme.csv",sep=";")
> x
   V1 V2 V3
1   1  5  2
2   2  3  4
3   3  3  6
4   4 10  8
5   5 32 10
6   6 10 12
7   7 20 14
8   8 15 16
9   9 25 18
10 10 20 20
11 11  4 22
12 12 20 24
13 13 15 26
14 14 10 28
15 15 15 30
16 16  8 32
 x[,1]
 [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16
> x[1,]
  V1 V2 V3
1  1  5  2
> x[1,]+x[2,]
  V1 V2 V3
1  3  8  6
> x[,1]+x[,2]
 [1]  6  5  6 14 37 16 27 23 34 30 15 32 28 24 30 24
> x[1,1]+x[1,2]
[1] 6