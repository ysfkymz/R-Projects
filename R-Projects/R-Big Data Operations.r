#R programming 
#15.06.2019 
#by Yusuf Kaymaz

> library(survival)
Warning message:
package �survival� was built under R version 3.5.3 
> cancer
    inst time status age sex ph.ecog ph.karno pat.karno meal.cal wt.loss
1      3  306      2  74   1       1       90       100     1175      NA
2      3  455      2  68   1       0       90        90     1225      15
3      3 1010      1  56   1       0       90        90       NA      15
4      5  210      2  57   1       1       90        60     1150      11
5      1  883      2  60   1       0      100        90       NA       0
6     12 1022      1  74   1       1       50        80      513       0
7      7  310      2  68   2       2       70        60      384      10
8     11  361      2  71   2       2       60        80      538       1
9      1  218      2  53   1       1       70        80      825      16
10     7  166      2  61   1       2       70        70      271      34
11     6  170      2  57   1       1       80        80     1025      27
12    16  654      2  68   2       2       70        70       NA      23
13    11  728      2  68   2       1       90        90       NA       5
14    21   71      2  60   1      NA       60        70     1225      32
15    12  567      2  57   1       1       80        70     2600      60
16     1  144      2  67   1       1       80        90       NA      15
17    22  613      2  70   1       1       90       100     1150      -5
18    16  707      2  63   1       2       50        70     1025      22
19     1   61      2  56   2       2       60        60      238      10
20    21   88      2  57   1       1       90        80     1175      NA
21    11  301      2  67   1       1       80        80     1025      17
22     6   81      2  49   2       0      100        70     1175      -8
23    11  624      2  50   1       1       70        80       NA      16
24    15  371      2  58   1       0       90       100      975      13
25    12  394      2  72   1       0       90        80       NA       0
26    12  520      2  70   2       1       90        80      825       6
27     4  574      2  60   1       0      100       100     1025     -13
28    13  118      2  70   1       3       60        70     1075      20
29    13  390      2  53   1       1       80        70      875      -7
30     1   12      2  74   1       2       70        50      305      20
31    12  473      2  69   2       1       90        90     1025      -1
32     1   26      2  73   1       2       60        70      388      20
33     7  533      2  48   1       2       60        80       NA     -11
34    16  107      2  60   2       2       50        60      925     -15
35    12   53      2  61   1       2       70       100     1075      10
36     1  122      2  62   2       2       50        50     1025      NA
37    22  814      2  65   1       2       70        60      513      28
38    15  965      1  66   2       1       70        90      875       4
39     1   93      2  74   1       2       50        40     1225      24
40     1  731      2  64   2       1       80       100     1175      15
41     5  460      2  70   1       1       80        60      975      10
42    11  153      2  73   2       2       60        70     1075      11
43    10  433      2  59   2       0       90        90      363      27
44    12  145      2  60   2       2       70        60       NA      NA
45     7  583      2  68   1       1       60        70     1025       7
46     7   95      2  76   2       2       60        60      625     -24
47     1  303      2  74   1       0       90        70      463      30
48     3  519      2  63   1       1       80        70     1025      10
49    13  643      2  74   1       0       90        90     1425       2
50    22  765      2  50   2       1       90       100     1175       4
51     3  735      2  72   2       1       90        90       NA       9
52    12  189      2  63   1       0       80        70       NA       0
53    21   53      2  68   1       0       90       100     1025       0
54     1  246      2  58   1       0      100        90     1175       7
55     6  689      2  59   1       1       90        80     1300      15
56     1   65      2  62   1       0       90        80      725      NA
57     5    5      2  65   2       0      100        80      338       5
58    22  132      2  57   1       2       70        60       NA      18
59     3  687      2  58   2       1       80        80     1225      10
60     1  345      2  64   2       1       90        80     1075      -3
61    22  444      2  75   2       2       70        70      438       8
62    12  223      2  48   1       1       90        80     1300      68
63    21  175      2  73   1       1       80       100     1025      NA
64    11   60      2  65   2       1       90        80     1025       0
65     3  163      2  69   1       1       80        60     1125       0
66     3   65      2  68   1       2       70        50      825       8
67    16  208      2  67   2       2       70        NA      538       2
68     5  821      1  64   2       0       90        70     1025       3
69    22  428      2  68   1       0      100        80     1039       0
70     6  230      2  67   1       1       80       100      488      23
71    13  840      1  63   1       0       90        90     1175      -1
72     3  305      2  48   2       1       80        90      538      29
73     5   11      2  74   1       2       70       100     1175       0
74     2  132      2  40   1       1       80        80       NA       3
75    21  226      2  53   2       1       90        80      825       3
76    12  426      2  71   2       1       90        90     1075      19
77     1  705      2  51   2       0      100        80     1300       0
78     6  363      2  56   2       1       80        70     1225      -2
79     3   11      2  81   1       0       90        NA      731      15
80     1  176      2  73   1       0       90        70      169      30
81     4  791      2  59   1       0      100        80      768       5
82    13   95      2  55   1       1       70        90     1500      15
83    11  196      1  42   1       1       80        80     1425       8
84    21  167      2  44   2       1       80        90      588      -1
85    16  806      1  44   1       1       80        80     1025       1
86     6  284      2  71   1       1       80        90     1100      14
87    22  641      2  62   2       1       80        80     1150       1
88    21  147      2  61   1       0      100        90     1175       4
89    13  740      1  44   2       1       90        80      588      39
90     1  163      2  72   1       2       70        70      910       2
91    11  655      2  63   1       0      100        90      975      -1
92    22  239      2  70   1       1       80       100       NA      23
93     5   88      2  66   1       1       90        80      875       8
94    10  245      2  57   2       1       80        60      280      14
95     1  588      1  69   2       0      100        90       NA      13
96    12   30      2  72   1       2       80        60      288       7
97     3  179      2  69   1       1       80        80       NA      25
98    12  310      2  71   1       1       90       100       NA       0
99    11  477      2  64   1       1       90       100      910       0
100    3  166      2  70   2       0       90        70       NA      10
101    1  559      1  58   2       0      100       100      710      15
102    6  450      2  69   2       1       80        90     1175       3
103   13  364      2  56   1       1       70        80       NA       4
104    6  107      2  63   1       1       90        70       NA       0
105   13  177      2  59   1       2       50        NA       NA      32
106   12  156      2  66   1       1       80        90      875      14
107   26  529      1  54   2       1       80       100      975      -3
108    1   11      2  67   1       1       90        90      925      NA
109   21  429      2  55   1       1      100        80      975       5
110    3  351      2  75   2       2       60        50      925      11
111   13   15      2  69   1       0       90        70      575      10
112    1  181      2  44   1       1       80        90     1175       5
113   10  283      2  80   1       1       80       100     1030       6
114    3  201      2  75   2       0       90       100       NA       1
115    6  524      2  54   2       1       80       100       NA      15
116    1   13      2  76   1       2       70        70      413      20
117    3  212      2  49   1       2       70        60      675      20
118    1  524      2  68   1       2       60        70     1300      30
119   16  288      2  66   1       2       70        60      613      24
120   15  363      2  80   1       1       80        90      346      11
121   22  442      2  75   1       0       90        90       NA       0
122   26  199      2  60   2       2       70        80      675      10
123    3  550      2  69   2       1       70        80      910       0
124   11   54      2  72   1       2       60        60      768      -3
125    1  558      2  70   1       0       90        90     1025      17
126   22  207      2  66   1       1       80        80      925      20
127    7   92      2  50   1       1       80        60     1075      13
128   12   60      2  64   1       1       80        90      993       0
129   16  551      1  77   2       2       80        60      750      28
130   12  543      1  48   2       0       90        60       NA       4
131    4  293      2  59   2       1       80        80      925      52
132   16  202      2  53   1       1       80        80       NA      20
133    6  353      2  47   1       0      100        90     1225       5
134   13  511      1  55   2       1       80        70       NA      49
135    1  267      2  67   1       0       90        70      313       6
136   22  511      1  74   2       2       60        40       96      37
137   12  371      2  58   2       1       80        70       NA       0
138   13  387      2  56   1       2       80        60     1075      NA
139    1  457      2  54   1       1       90        90      975      -5
140    5  337      2  56   1       0      100       100     1500      15
141   21  201      2  73   2       2       70        60     1225     -16
142    3  404      1  74   1       1       80        70      413      38
143   26  222      2  76   1       2       70        70     1500       8
144    1   62      2  65   2       1       80        90     1075       0
145   11  458      1  57   1       1       80       100      513      30
146   26  356      1  53   2       1       90        90       NA       2
147   16  353      2  71   1       0      100        80      775       2
148   16  163      2  54   1       1       90        80     1225      13
149   12   31      2  82   1       0      100        90      413      27
150   13  340      2  59   2       0      100        90       NA       0
151   13  229      2  70   1       1       70        60     1175      -2
152   22  444      1  60   1       0       90       100       NA       7
153    5  315      1  62   2       0       90        90       NA       0
154   16  182      2  53   2       1       80        60       NA       4
155   32  156      2  55   1       2       70        30     1025      10
156   NA  329      2  69   1       2       70        80      713      20
157   26  364      1  68   2       1       90        90       NA       7
158    4  291      2  62   1       2       70        60      475      27
159   12  179      2  63   1       1       80        70      538      -2
160    1  376      1  56   2       1       80        90      825      17
161   32  384      1  62   2       0       90        90      588       8
162   10  268      2  44   2       1       90       100     2450       2
163   11  292      1  69   1       2       60        70     2450      36
164    6  142      2  63   1       1       90        80      875       2
165    7  413      1  64   1       1       80        70      413      16
166   16  266      1  57   2       0       90        90     1075       3
167   11  194      2  60   2       1       80        60       NA      33
168   21  320      2  46   1       0      100       100      860       4
169    6  181      2  61   1       1       90        90      730       0
170   12  285      2  65   1       0      100        90     1025       0
171   13  301      1  61   1       1       90       100      825       2
172    2  348      2  58   2       0       90        80     1225      10
173    2  197      2  56   1       1       90        60      768      37
174   16  382      1  43   2       0      100        90      338       6
175    1  303      1  53   1       1       90        80     1225      12
176   13  296      1  59   2       1       80       100     1025       0
177    1  180      2  56   1       2       60        80     1225      -2
178   13  186      2  55   2       1       80        70       NA      NA
179    1  145      2  53   2       1       80        90      588      13
180    7  269      1  74   2       0      100       100      588       0
181   13  300      1  60   1       0      100       100      975       5
182    1  284      1  39   1       0      100        90     1225      -5
183   16  350      2  66   2       0       90       100     1025      NA
184   32  272      1  65   2       1       80        90       NA      -1
185   12  292      1  51   2       0       90        80     1225       0
186   12  332      1  45   2       0       90       100      975       5
187    2  285      2  72   2       2       70        90      463      20
188    3  259      1  58   1       0       90        80     1300       8
189   15  110      2  64   1       1       80        60     1025      12
190   22  286      2  53   1       0       90        90     1225       8
191   16  270      2  72   1       1       80        90      488      14
192   16   81      2  52   1       2       60        70     1075      NA
193   12  131      2  50   1       1       90        80      513      NA
194    1  225      1  64   1       1       90        80      825      33
195   22  269      2  71   1       1       90        90     1300      -2
196   12  225      1  70   1       0      100       100     1175       6
197   32  243      1  63   2       1       80        90      825       0
198   21  279      1  64   1       1       90        90       NA       4
199    1  276      1  52   2       0      100        80      975       0
200   32  135      2  60   1       1       90        70     1275       0
201   15   79      2  64   2       1       90        90      488      37
202   22   59      2  73   1       1       60        60     2200       5
203   32  240      1  63   2       0       90       100     1025       0
204    3  202      1  50   2       0      100       100      635       1
205   26  235      1  63   2       0      100        90      413       0
206   33  105      2  62   1       2       NA        70       NA      NA
207    5  224      1  55   2       0       80        90       NA      23
208   13  239      2  50   2       2       60        60     1025      -3
209   21  237      1  69   1       1       80        70       NA      NA
210   33  173      1  59   2       1       90        80       NA      10
211    1  252      1  60   2       0      100        90      488      -2
212    6  221      1  67   1       1       80        70      413      23
213   15  185      1  69   1       1       90        70     1075       0
214   11   92      1  64   2       2       70       100       NA      31
215   11   13      2  65   1       1       80        90       NA      10
216   11  222      1  65   1       1       90        70     1025      18
217   13  192      1  41   2       1       90        80       NA     -10
218   21  183      2  76   1       2       80        60      825       7
219   11  211      1  70   2       2       70        30      131       3
220    2  175      1  57   2       0       80        80      725      11
221   22  197      1  67   1       1       80        90     1500       2
222   11  203      1  71   2       1       80        90     1025       0
223    1  116      2  76   1       1       80        80       NA       0
224    1  188      1  77   1       1       80        60       NA       3
225   13  191      1  39   1       0       90        90     2350      -5
226   32  105      1  75   2       2       60        70     1025       5
227    6  174      1  66   1       1       90       100     1075       1
228   22  177      1  58   2       1       80        90     1060       0
> head(cancer)
  inst time status age sex ph.ecog ph.karno pat.karno meal.cal wt.loss
1    3  306      2  74   1       1       90       100     1175      NA
2    3  455      2  68   1       0       90        90     1225      15
3    3 1010      1  56   1       0       90        90       NA      15
4    5  210      2  57   1       1       90        60     1150      11
5    1  883      2  60   1       0      100        90       NA       0
6   12 1022      1  74   1       1       50        80      513       0
> tail(cancer)
    inst time status age sex ph.ecog ph.karno pat.karno meal.cal wt.loss
223    1  116      2  76   1       1       80        80       NA       0
224    1  188      1  77   1       1       80        60       NA       3
225   13  191      1  39   1       0       90        90     2350      -5
226   32  105      1  75   2       2       60        70     1025       5
227    6  174      1  66   1       1       90       100     1075       1
228   22  177      1  58   2       1       80        90     1060       0
> head(cancer,n=10)
   inst time status age sex ph.ecog ph.karno pat.karno meal.cal wt.loss
1     3  306      2  74   1       1       90       100     1175      NA
2     3  455      2  68   1       0       90        90     1225      15
3     3 1010      1  56   1       0       90        90       NA      15
4     5  210      2  57   1       1       90        60     1150      11
5     1  883      2  60   1       0      100        90       NA       0
6    12 1022      1  74   1       1       50        80      513       0
7     7  310      2  68   2       2       70        60      384      10
8    11  361      2  71   2       2       60        80      538       1
9     1  218      2  53   1       1       70        80      825      16
10    7  166      2  61   1       2       70        70      271      34
> cancer[2,5]
[1] 1
> cancer[2:5,]
  inst time status age sex ph.ecog ph.karno pat.karno meal.cal wt.loss
2    3  455      2  68   1       0       90        90     1225      15
3    3 1010      1  56   1       0       90        90       NA      15
4    5  210      2  57   1       1       90        60     1150      11
5    1  883      2  60   1       0      100        90       NA       0
> cancer[2:5,1:3]
  inst time status
2    3  455      2
3    3 1010      1
4    5  210      2
5    1  883      2
> names(cancer)
 [1] "inst"      "time"      "status"    "age"       "sex"       "ph.ecog"  
 [7] "ph.karno"  "pat.karno" "meal.cal"  "wt.loss"  
> mean(cancer$age)
[1] 62.44737

> cancer$age
  [1] 74 68 56 57 60 74 68 71 53 61 57 68 68 60 57 67 70 63 56 57 67 49 50 58
 [25] 72 70 60 70 53 74 69 73 48 60 61 62 65 66 74 64 70 73 59 60 68 76 74 63
 [49] 74 50 72 63 68 58 59 62 65 57 58 64 75 48 73 65 69 68 67 64 68 67 63 48
 [73] 74 40 53 71 51 56 81 73 59 55 42 44 44 71 62 61 44 72 63 70 66 57 69 72
 [97] 69 71 64 70 58 69 56 63 59 66 54 67 55 75 69 44 80 75 54 76 49 68 66 80
[121] 75 60 69 72 70 66 50 64 77 48 59 53 47 55 67 74 58 56 54 56 73 74 76 65
[145] 57 53 71 54 82 59 70 60 62 53 55 69 68 62 63 56 62 44 69 63 64 57 60 46
[169] 61 65 61 58 56 43 53 59 56 55 53 74 60 39 66 65 51 45 72 58 64 53 72 52
[193] 50 64 71 70 63 64 52 60 64 73 63 50 63 62 55 50 69 59 60 67 69 64 65 65
[217] 41 76 70 57 67 71 76 77 39 75 66 58
> attach(cancer)
> class(cancer)
[1] "data.frame"
> class(cancer$age)
[1] "numeric"