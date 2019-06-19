#R programming 
#19.06.2019 
#by Yusuf Kaymaz


#plots,graphs,boxplot,piechart,barchart
> library(survival)
Warning message:
package ‘survival’ was built under R version 3.5.3 
> cancer
> cancer$age
  [1] 74 68 56 57 60 74 68 71 53 61 57 68 68 60 57 67 70
 [18] 63 56 57 67 49 50 58 72 70 60 70 53 74 69 73 48 60
 [35] 61 62 65 66 74 64 70 73 59 60 68 76 74 63 74 50 72
 [52] 63 68 58 59 62 65 57 58 64 75 48 73 65 69 68 67 64
 [69] 68 67 63 48 74 40 53 71 51 56 81 73 59 55 42 44 44
 [86] 71 62 61 44 72 63 70 66 57 69 72 69 71 64 70 58 69
[103] 56 63 59 66 54 67 55 75 69 44 80 75 54 76 49 68 66
[120] 80 75 60 69 72 70 66 50 64 77 48 59 53 47 55 67 74
[137] 58 56 54 56 73 74 76 65 57 53 71 54 82 59 70 60 62
[154] 53 55 69 68 62 63 56 62 44 69 63 64 57 60 46 61 65
[171] 61 58 56 43 53 59 56 55 53 74 60 39 66 65 51 45 72
[188] 58 64 53 72 52 50 64 71 70 63 64 52 60 64 73 63 50
[205] 63 62 55 50 69 59 60 67 69 64 65 65 41 76 70 57 67
[222] 71 76 77 39 75 66 58
> barplot(cancer$sex)
> table(cancer$sex)

  1   2 
138  90
> numbers<-table(cancer$sex)
> numbers

  1   2 
138  90 
> percent<-table(cancer$sex)/228
> percent

        1         2 
0.6052632 0.3947368 
> barplot(percent)
> barplot(percent,main = "distribution",xlab ="sex",ylab = "percent")
> pie(numbers)
> pie(numbers,main = "DISTRIBUTION",xlab ="SEX",ylab = "PERCENTAGE",names.arg =c("MAN","WOMAN"),col=c("blue","pink"))
> boxplot(cancer$age)
> boxplot(cancer$age~cancer$sex)

#Histogram
> hist(cancer$age)
> lines(density(cancer$age))
> lines(density(cancer$age),col=2)
> lines(density(cancer$age),col=2,lwd=2)
> lines(density(cancer$age),col=2,lwd=5)
> box(which = "plot")
> stem(cancer$age)
 The decimal point is at the |

  38 | 00
  40 | 00
  42 | 00
  44 | 000000
  46 | 00
  48 | 000000
  50 | 00000000
  52 | 00000000000
  54 | 0000000000
  56 | 000000000000000000
  58 | 0000000000000000
  60 | 0000000000000000
  62 | 000000000000000000
  64 | 0000000000000000000
  66 | 000000000000000
  68 | 000000000000000000000
  70 | 00000000000000000
  72 | 0000000000000
  74 | 000000000000000
  76 | 0000000
  78 | 
  80 | 000
  82 | 0

> stem(cancer$wt.loss)

  The decimal point is 1 digit(s) to the right of the |

  -2 | 4
  -1 | 65