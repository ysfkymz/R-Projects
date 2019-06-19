#R programming 
#16.06.2019 
#by Yusuf Kaymaz

#Logical Operators
> attach(cancer)
> sex==2
  [1] FALSE FALSE FALSE FALSE FALSE FALSE  TRUE  TRUE FALSE FALSE FALSE  TRUE
 [13]  TRUE FALSE FALSE FALSE FALSE FALSE  TRUE FALSE FALSE  TRUE FALSE FALSE
 [25] FALSE  TRUE FALSE FALSE FALSE FALSE  TRUE FALSE FALSE  TRUE FALSE  TRUE
 [37] FALSE  TRUE FALSE  TRUE FALSE  TRUE  TRUE  TRUE FALSE  TRUE FALSE FALSE
 [49] FALSE  TRUE  TRUE FALSE FALSE FALSE FALSE FALSE  TRUE FALSE  TRUE  TRUE
 [61]  TRUE FALSE FALSE  TRUE FALSE FALSE  TRUE  TRUE FALSE FALSE FALSE  TRUE
 [73] FALSE FALSE  TRUE  TRUE  TRUE  TRUE FALSE FALSE FALSE FALSE FALSE  TRUE
 [85] FALSE FALSE  TRUE FALSE  TRUE FALSE FALSE FALSE FALSE  TRUE  TRUE FALSE
 [97] FALSE FALSE FALSE  TRUE  TRUE  TRUE FALSE FALSE FALSE FALSE  TRUE FALSE
[109] FALSE  TRUE FALSE FALSE FALSE  TRUE  TRUE FALSE FALSE FALSE FALSE FALSE
[121] FALSE  TRUE  TRUE FALSE FALSE FALSE FALSE FALSE  TRUE  TRUE  TRUE FALSE
[133] FALSE  TRUE FALSE  TRUE  TRUE FALSE FALSE FALSE  TRUE FALSE FALSE  TRUE
[145] FALSE  TRUE FALSE FALSE FALSE  TRUE FALSE FALSE  TRUE  TRUE FALSE FALSE
[157]  TRUE FALSE FALSE  TRUE  TRUE  TRUE FALSE FALSE FALSE  TRUE  TRUE FALSE
[169] FALSE FALSE FALSE  TRUE FALSE  TRUE FALSE  TRUE FALSE  TRUE  TRUE  TRUE
[181] FALSE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE FALSE FALSE FALSE FALSE FALSE
[193] FALSE FALSE FALSE FALSE  TRUE FALSE  TRUE FALSE  TRUE FALSE  TRUE  TRUE
[205]  TRUE FALSE  TRUE  TRUE FALSE  TRUE  TRUE FALSE FALSE  TRUE FALSE FALSE
[217]  TRUE FALSE  TRUE  TRUE FALSE  TRUE FALSE FALSE FALSE  TRUE FALSE  TRUE
> age[sex==2]
 [1] 68 71 68 68 56 49 70 69 60 62 66 64 73 59 60 76 50 72 65 58 64 75 65 67 64
[26] 48 53 71 51 56 44 62 44 57 69 70 58 69 54 75 75 54 60 69 77 48 59 55 74 58
[51] 73 65 53 59 62 53 68 56 62 44 57 60 58 43 59 55 53 74 66 65 51 45 72 63 52
[76] 64 63 50 63 55 50 59 60 64 41 70 57 71 75 58
> mean(age[sex==2])
[1] 61.07778
> mean(age[age>60])
[1] 68.68657
> bayan<-cancer[sex==2,]
> bayan
    inst time status age sex ph.ecog ph.karno pat.karno meal.cal wt.loss
7      7  310      2  68   2       2       70        60      384      10
8     11  361      2  71   2       2       60        80      538       1
12    16  654      2  68   2       2       70        70       NA      23
13    11  728      2  68   2       1       90        90       NA       5
19     1   61      2  56   2       2       60        60      238      10
22     6   81      2  49   2       0      100        70     1175      -8
26    12  520      2  70   2       1       90        80      825       6
31    12  473      2  69   2       1       90        90     1025      -1
34    16  107      2  60   2       2       50        60      925     -15
> erkek<-cancer[sex==1]
Error in `[.data.frame`(cancer, sex == 1) : undefined columns selected
> erkek<-cancer[sex==1,]
> erkek
    inst time status age sex ph.ecog ph.karno pat.karno meal.cal wt.loss
1      3  306      2  74   1       1       90       100     1175      NA
2      3  455      2  68   1       0       90        90     1225      15
3      3 1010      1  56   1       0       90        90       NA      15
4      5  210      2  57   1       1       90        60     1150      11
5      1  883      2  60   1       0      100        90       NA       0
> dim(erkek)
[1] 138  10
> bayan[bayan$age>65,]
    inst time status age sex ph.ecog ph.karno pat.karno meal.cal wt.loss
7      7  310      2  68   2       2       70        60      384      10
8     11  361      2  71   2       2       60        80      538       1
12    16  654      2  68   2       2       70        70       NA      23
13    11  728      2  68   2       1       90        90       NA       5
26    12  520      2  70   2       1       90        80      825       6
31    12  473      2  69   2       1       90        90     1025      -1
38    15  965      1  66   2       1       70        90      875       4
42    11  153      2  73   2       2       60        70     1075      11
46     7   95      2  76   2       2       60        60      625     -24
51     3  735      2  72   2       1       90        90       NA       9
> bayan$age>65
 [1]  TRUE  TRUE  TRUE  TRUE FALSE FALSE  TRUE  TRUE FALSE FALSE  TRUE FALSE
[13]  TRUE FALSE FALSE  TRUE FALSE  TRUE FALSE FALSE FALSE  TRUE FALSE  TRUE
[25] FALSE FALSE FALSE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE  TRUE
[37] FALSE  TRUE FALSE  TRUE  TRUE FALSE FALSE  TRUE  TRUE FALSE FALSE FALSE
[49]  TRUE FALSE  TRUE FALSE FALSE FALSE FALSE FALSE  TRUE FALSE FALSE FALSE
[61] FALSE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE  TRUE FALSE FALSE FALSE
[73]  TRUE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[85] FALSE  TRUE FALSE  TRUE  TRUE FALSE
> summary(cancer)
      inst            time            status           age       
 Min.   : 1.00   Min.   :   5.0   Min.   :1.000   Min.   :39.00  
 1st Qu.: 3.00   1st Qu.: 166.8   1st Qu.:1.000   1st Qu.:56.00  
 Median :11.00   Median : 255.5   Median :2.000   Median :63.00  
 Mean   :11.09   Mean   : 305.2   Mean   :1.724   Mean   :62.45  
 3rd Qu.:16.00   3rd Qu.: 396.5   3rd Qu.:2.000   3rd Qu.:69.00  
 Max.   :33.00   Max.   :1022.0   Max.   :2.000   Max.   :82.00  
 NA's   :1                                                       
      sex           ph.ecog          ph.karno        pat.karno     
 Min.   :1.000   Min.   :0.0000   Min.   : 50.00   Min.   : 30.00  
 1st Qu.:1.000   1st Qu.:0.0000   1st Qu.: 75.00   1st Qu.: 70.00  
 Median :1.000   Median :1.0000   Median : 80.00   Median : 80.00  
 Mean   :1.395   Mean   :0.9515   Mean   : 81.94   Mean   : 79.96  
 3rd Qu.:2.000   3rd Qu.:1.0000   3rd Qu.: 90.00   3rd Qu.: 90.00  
 Max.   :2.000   Max.   :3.0000   Max.   :100.00   Max.   :100.00  
                 NA's   :1        NA's   :1        NA's   :3       
    meal.cal         wt.loss       
 Min.   :  96.0   Min.   :-24.000  
 1st Qu.: 635.0   1st Qu.:  0.000  
 Median : 975.0   Median :  7.000  
 Mean   : 928.8   Mean   :  9.832  
 3rd Qu.:1150.0   3rd Qu.: 15.750  
 Max.   :2600.0   Max.   : 68.000  
 NA's   :47       NA's   :14     
> sustu<-cancer[age>65 & sex==2,]
> sustu
    inst time status age sex ph.ecog ph.karno pat.karno meal.cal wt.loss
7      7  310      2  68   2       2       70        60      384      10
8     11  361      2  71   2       2       60        80      538       1
12    16  654      2  68   2       2       70        70       NA      23
13    11  728      2  68   2       1       90        90       NA       5
26    12  520      2  70   2       1       90        80      825       6
31    12  473      2  69   2       1       90        90     1025      -1
38    15  965      1  66   2       1       70        90      875       4
42    11  153      2  73   2       2       60        70     1075      11
46     7   95      2  76   2       2       60        60      625     -24
51     3  735      2  72   2       1       90        90       NA       9
61    22  444      2  75   2       2       70        70      438       8
67    16  208      2  67   2       2       70        NA      538       2
76    12  426      2  71   2       1       90        90     1075      19
95     1  588      1  69   2       0      100        90       NA      13