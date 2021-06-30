R version 4.1.0 (2021-05-18) -- "Camp Pontanezen"
Copyright (C) 2021 The R Foundation for Statistical Computing
Platform: x86_64-w64-mingw32/x64 (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

> setwd("C:/Users/Saket/Desktop/Facebook_metrics")
> d = read.csv2("dataset_facebook.csv")
> dim(d)
[1] 500  19
> ncol(d)
[1] 19
> nrow(d)
[1] 500
> head(d)
  Page.total.likes   Type Category Post.Month Post.Weekday Post.Hour Paid Lifetime.Post.Total.Reach Lifetime.Post.Total.Impressions
1           139441  Photo        2         12            4         3    0                      2752                            5091
2           139441 Status        2         12            3        10    0                     10460                           19057
3           139441  Photo        3         12            3         3    0                      2413                            4373
4           139441  Photo        2         12            2        10    1                     50128                           87991
5           139441  Photo        2         12            2         3    0                      7244                           13594
6           139441 Status        2         12            1         9    0                     10472                           20849
  Lifetime.Engaged.Users Lifetime.Post.Consumers Lifetime.Post.Consumptions Lifetime.Post.Impressions.by.people.who.have.liked.your.Page
1                    178                     109                        159                                                         3078
2                   1457                    1361                       1674                                                        11710
3                    177                     113                        154                                                         2812
4                   2211                     790                       1119                                                        61027
5                    671                     410                        580                                                         6228
6                   1191                    1073                       1389                                                        16034
  Lifetime.Post.reach.by.people.who.like.your.Page Lifetime.People.who.have.liked.your.Page.and.engaged.with.your.post comment like share
1                                             1640                                                                 119       4   79    17
2                                             6112                                                                1108       5  130    29
3                                             1503                                                                 132       0   66    14
4                                            32048                                                                1386      58 1572   147
5                                             3200                                                                 396      19  325    49
6                                             7852                                                                1016       1  152    33
  Total.Interactions
1                100
2                164
3                 80
4               1777
5                393
6                186
> tail(d)
    Page.total.likes  Type Category Post.Month Post.Weekday Post.Hour Paid Lifetime.Post.Total.Reach Lifetime.Post.Total.Impressions
495            85093 Photo        3          1            7        10    0                      5400                            9218
496            85093 Photo        3          1            7         2    0                      4684                            7536
497            81370 Photo        2          1            5         8    0                      3480                            6229
498            81370 Photo        1          1            5         2    0                      3778                            7216
499            81370 Photo        3          1            4        11    0                      4156                            7564
500            81370 Photo        2          1            4         4   NA                      4188                            7292
    Lifetime.Engaged.Users Lifetime.Post.Consumers Lifetime.Post.Consumptions Lifetime.Post.Impressions.by.people.who.have.liked.your.Page
495                    810                     756                       1003                                                         5654
496                    733                     708                        985                                                         4750
497                    537                     508                        687                                                         3961
498                    625                     572                        795                                                         4742
499                    626                     574                        832                                                         4534
500                    564                     524                        743                                                         3861
    Lifetime.Post.reach.by.people.who.like.your.Page Lifetime.People.who.have.liked.your.Page.and.engaged.with.your.post comment like share
495                                             3230                                                                 422      10  125    41
496                                             2876                                                                 392       5   53    26
497                                             2104                                                                 301       0   53    22
498                                             2388                                                                 363       4   93    18
499                                             2452                                                                 370       7   91    38
500                                             2200                                                                 316       0   91    28
    Total.Interactions
495                176
496                 84
497                 75
498                115
499                136
500                119
> sub = d[c('Category','comment','like','share')]
> head(sub)
  Category comment like share
1        2       4   79    17
2        2       5  130    29
3        3       0   66    14
4        2      58 1572   147
5        2      19  325    49
6        2       1  152    33
> write.csv(sub,"sub-file.csv")
> a = read.csv2("dataset_facebook.csv")
> b = read.csv2("dataset_facebook.csv")
> dim(a)
[1] 500  19
> dim(b)
[1] 500  19
> newab = rbind(a,b)
> dim(newab)
[1] 1000   19
> x=sub[order(-sub$like),]
> head(x)
    Category comment like share
245        2     372 5172   790
380        3      51 1998   128
350        3      45 1639   122
169        1     144 1622   208
4          2      58 1572   147
461        3     146 1546   181
> T = t(sub)
> head(T)
         [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10] [,11] [,12] [,13] [,14] [,15] [,16] [,17] [,18] [,19] [,20] [,21] [,22] [,23] [,24] [,25]
Category    2    2    3    2    2    2    3    3    2     3     2     2     2     2     2     2     3     1     3     3     2     1     1     3     2
comment     4    5    0   58   19    1    3    0    0     3     0     0     0     5     2     4     2    15     4     0     3     0     0     0     3
         [,26] [,27] [,28] [,29] [,30] [,31] [,32] [,33] [,34] [,35] [,36] [,37] [,38] [,39] [,40] [,41] [,42] [,43] [,44] [,45] [,46] [,47] [,48]
Category     2     2     3     2     1     2     2     3     3     1     2     3     1     2     1     2     1     1     1     1     1     1     1
comment      0    10     0    36    18    33     1     2     4     2     6     0    16    11     1     7     6     7     7     0     4     4     6
         [,49] [,50] [,51] [,52] [,53] [,54] [,55] [,56] [,57] [,58] [,59] [,60] [,61] [,62] [,63] [,64] [,65] [,66] [,67] [,68] [,69] [,70] [,71]
Category     1     1     2     1     1     1     1     1     1     1     1     1     1     1     1     1     1     1     1     1     1     1     1
comment      0     1     1    24     9     4     4     2     2     0     3     4     8     8    10     4     2    19     0    20     0     7     7
         [,72] [,73] [,74] [,75] [,76] [,77] [,78] [,79] [,80] [,81] [,82] [,83] [,84] [,85] [,86] [,87] [,88] [,89] [,90] [,91] [,92] [,93] [,94]
Category     1     3     1     1     1     1     1     2     1     2     3     1     3     3     1     1     3     1     1     1     2     3     3
comment     17     3    14     2    20     0     4     0     2     2    18     5     2     2    10     2     3     3     2    13     0     9     2
         [,95] [,96] [,97] [,98] [,99] [,100] [,101] [,102] [,103] [,104] [,105] [,106] [,107] [,108] [,109] [,110] [,111] [,112] [,113] [,114] [,115]
Category     2     3     1     2     2      1      1      2      3      1      1      1      3      2      3      2      1      1      2      2      1
comment      2     5     3     1     7     12      0     26      2      0      4     42      9     17      7      4      2      0      4      2      0
         [,116] [,117] [,118] [,119] [,120] [,121] [,122] [,123] [,124] [,125] [,126] [,127] [,128] [,129] [,130] [,131] [,132] [,133] [,134] [,135]
Category      1      1      1      1      1      1      2      1      1      1      1      3      1      1      1      1      1      1      1      1
comment       0      1      0      0      0      0      6      1      1      0      0      3      0      0      0      0      0      1      0      2
         [,136] [,137] [,138] [,139] [,140] [,141] [,142] [,143] [,144] [,145] [,146] [,147] [,148] [,149] [,150] [,151] [,152] [,153] [,154] [,155]
Category      1      1      1      2      1      1      3      2      3      1      1      3      3      2      1      1      2      2      1      2
comment       0      0      4      0      4     15      2     60     10      3      6      0      0      3      0     24      2     47      7     13
         [,156] [,157] [,158] [,159] [,160] [,161] [,162] [,163] [,164] [,165] [,166] [,167] [,168] [,169] [,170] [,171] [,172] [,173] [,174] [,175]
Category      2      2      3      2      2      3      2      3      2      1      2      1      3      1      2      3      1      2      1      2
comment       0     16      1     30      1      6      6     22      4      0      0      2      8    144      6      3      2     38      6      5
         [,176] [,177] [,178] [,179] [,180] [,181] [,182] [,183] [,184] [,185] [,186] [,187] [,188] [,189] [,190] [,191] [,192] [,193] [,194] [,195]
Category      2      3      1      2      2      2      1      3      1      2      1      2      2      3      2      3      3      2      2      1
comment       2     29      2      7      4     20      4      1      6     11      0      5      0      1      3      2      9      0      3      6
         [,196] [,197] [,198] [,199] [,200] [,201] [,202] [,203] [,204] [,205] [,206] [,207] [,208] [,209] [,210] [,211] [,212] [,213] [,214] [,215]
Category      2      1      2      1      3      2      1      2      3      3      1      1      2      3      2      3      3      2      3      3
comment       9      2      1      0     33      2      0      2      4      2      0      4      5      1      2      6      2      3      1      4
         [,216] [,217] [,218] [,219] [,220] [,221] [,222] [,223] [,224] [,225] [,226] [,227] [,228] [,229] [,230] [,231] [,232] [,233] [,234] [,235]
Category      1      2      2      1      3      2      3      2      2      1      2      3      1      2      2      3      3      2      1      2
comment       2      2     41      3     16      2      6      1     18      2      9      3      6     64      9      2      0      6      1      1
         [,236] [,237] [,238] [,239] [,240] [,241] [,242] [,243] [,244] [,245] [,246] [,247] [,248] [,249] [,250] [,251] [,252] [,253] [,254] [,255]
Category      2      3      2      1      2      3      1      2      1      2      1      2      2      3      2      1      1      3      2      3
comment       3     12      4      2     10      6      4      9     18    372      4      0      0      1      1      4      6      6     11     10
         [,256] [,257] [,258] [,259] [,260] [,261] [,262] [,263] [,264] [,265] [,266] [,267] [,268] [,269] [,270] [,271] [,272] [,273] [,274] [,275]
Category      2      1      1      2      3      2      1      2      2      3      3      1      2      1      1      2      1      1      3      2
comment      30      2      4     10      9      0     13      2      0      7      3      2     13     26      2      6      7     22      1     18
         [,276] [,277] [,278] [,279] [,280] [,281] [,282] [,283] [,284] [,285] [,286] [,287] [,288] [,289] [,290] [,291] [,292] [,293] [,294] [,295]
Category      2      3      1      1      1      2      2      2      1      1      2      1      1      1      1      1      2      1      2      1
comment      36      0     23     11      7      1      1      0      1     11      4      0     14    103      5      0      5      0      1      0
         [,296] [,297] [,298] [,299] [,300] [,301] [,302] [,303] [,304] [,305] [,306] [,307] [,308] [,309] [,310] [,311] [,312] [,313] [,314] [,315]
Category      1      3      3      2      1      2      3      1      3      1      3      2      3      3      3      1      3      3      3      1
comment       5      5      0      0      0     11      1      9      4      0      2     12      4      3      8      0      2      2      3      0
         [,316] [,317] [,318] [,319] [,320] [,321] [,322] [,323] [,324] [,325] [,326] [,327] [,328] [,329] [,330] [,331] [,332] [,333] [,334] [,335]
Category      3      3      2      3      2      1      3      3      3      3      3      2      3      3      3      3      3      3      3      2
comment       9      0      2      2     18      0      2      2     20      2      2      1      3     16      7     20      1      0      0      2
         [,336] [,337] [,338] [,339] [,340] [,341] [,342] [,343] [,344] [,345] [,346] [,347] [,348] [,349] [,350] [,351] [,352] [,353] [,354] [,355]
Category      2      3      3      3      1      3      3      2      3      1      3      3      3      3      3      2      3      1      3      2
comment       1      2      4     25     25      6      2      5      6      3      3     37      1     12     45      3      4      6      4      2
         [,356] [,357] [,358] [,359] [,360] [,361] [,362] [,363] [,364] [,365] [,366] [,367] [,368] [,369] [,370] [,371] [,372] [,373] [,374] [,375]
Category      1      3      2      2      3      1      3      2      3      1      3      3      3      1      2      1      2      1      1      1
comment      12      3      2      1     25      3      0      1      1      9      1      4     12      4      2     45     17      7      2      0
         [,376] [,377] [,378] [,379] [,380] [,381] [,382] [,383] [,384] [,385] [,386] [,387] [,388] [,389] [,390] [,391] [,392] [,393] [,394] [,395]
Category      3      3      3      1      3      1      3      1      3      1      3      1      1      1      1      3      2      1      3      3
comment       0      0      8      2     51      8     11      1      2      3      5      0      0      0      4      0      6      1      1      3
         [,396] [,397] [,398] [,399] [,400] [,401] [,402] [,403] [,404] [,405] [,406] [,407] [,408] [,409] [,410] [,411] [,412] [,413] [,414] [,415]
Category      1      3      1      3      3      3      1      1      1      3      3      3      3      1      2      2      3      1      1      1
comment       1      1      5      1      9      5      9      4      1      1      1      2      2      1      4      7      1      1      2      3
         [,416] [,417] [,418] [,419] [,420] [,421] [,422] [,423] [,424] [,425] [,426] [,427] [,428] [,429] [,430] [,431] [,432] [,433] [,434] [,435]
Category      1      1      1      1      1      1      1      1      1      1      3      1      1      1      1      1      1      1      1      1
comment       7      3      0      1      0      0      0      0      8      0      2      0      4      0      0      0      0      0     12      1
         [,436] [,437] [,438] [,439] [,440] [,441] [,442] [,443] [,444] [,445] [,446] [,447] [,448] [,449] [,450] [,451] [,452] [,453] [,454] [,455]
Category      1      1      1      2      1      1      1      3      3      2      1      1      1      1      1      1      1      1      3      3
comment      11     16      0      2      1      1      0     10      1      0      1     10      6      2      6      3      0      4      3     14
         [,456] [,457] [,458] [,459] [,460] [,461] [,462] [,463] [,464] [,465] [,466] [,467] [,468] [,469] [,470] [,471] [,472] [,473] [,474] [,475]
Category      3      1      1      3      2      3      1      3      3      1      3      2      2      1      3      1      3      1      3      1
comment       5      1      6      5      2    146      5     19      8      9      4      3      1      5     10      4      7      0      4      0
         [,476] [,477] [,478] [,479] [,480] [,481] [,482] [,483] [,484] [,485] [,486] [,487] [,488] [,489] [,490] [,491] [,492] [,493] [,494] [,495]
Category      3      1      1      3      3      2      1      3      2      3      1      3      3      3      3      3      3      1      3      3
comment       0      7      1      1      7     56      0      3      2      2      0      2      1     21      1      1      1      0     17     10
         [,496] [,497] [,498] [,499] [,500]
Category      3      2      1      3      2
comment       5      0      4      7      0
 [ reached getOption("max.print") -- omitted 2 rows ]
> install.packages("reshape")
WARNING: Rtools is required to build R packages but is not currently installed. Please download and install the appropriate version of Rtools before proceeding:

https://cran.rstudio.com/bin/windows/Rtools/
Installing package into ‘C:/Users/Saket/Documents/R/win-library/4.1’
(as ‘lib’ is unspecified)
also installing the dependencies ‘Rcpp’, ‘plyr’

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/Rcpp_1.0.6.zip'
Content type 'application/zip' length 3254743 bytes (3.1 MB)
downloaded 3.1 MB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/plyr_1.8.6.zip'
Content type 'application/zip' length 1496643 bytes (1.4 MB)
downloaded 1.4 MB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/reshape_0.8.8.zip'
Content type 'application/zip' length 170159 bytes (166 KB)
downloaded 166 KB

package ‘Rcpp’ successfully unpacked and MD5 sums checked
package ‘plyr’ successfully unpacked and MD5 sums checked
package ‘reshape’ successfully unpacked and MD5 sums checked

The downloaded binary packages are in
	C:\Users\Saket\AppData\Local\Temp\Rtmps9LQox\downloaded_packages
> library(reshape)
> melt(data=sub, id.vars = "Category")
    Category variable value
1          2  comment     4
2          2  comment     5
3          3  comment     0
4          2  comment    58
5          2  comment    19
6          2  comment     1
7          3  comment     3
8          3  comment     0
9          2  comment     0
10         3  comment     3
11         2  comment     0
12         2  comment     0
13         2  comment     0
14         2  comment     5
15         2  comment     2
16         2  comment     4
17         3  comment     2
18         1  comment    15
19         3  comment     4
20         3  comment     0
21         2  comment     3
22         1  comment     0
23         1  comment     0
24         3  comment     0
25         2  comment     3
26         2  comment     0
27         2  comment    10
28         3  comment     0
29         2  comment    36
30         1  comment    18
31         2  comment    33
32         2  comment     1
33         3  comment     2
34         3  comment     4
35         1  comment     2
36         2  comment     6
37         3  comment     0
38         1  comment    16
39         2  comment    11
40         1  comment     1
41         2  comment     7
42         1  comment     6
43         1  comment     7
44         1  comment     7
45         1  comment     0
46         1  comment     4
47         1  comment     4
48         1  comment     6
49         1  comment     0
50         1  comment     1
51         2  comment     1
52         1  comment    24
53         1  comment     9
54         1  comment     4
55         1  comment     4
56         1  comment     2
57         1  comment     2
58         1  comment     0
59         1  comment     3
60         1  comment     4
61         1  comment     8
62         1  comment     8
63         1  comment    10
64         1  comment     4
65         1  comment     2
66         1  comment    19
67         1  comment     0
68         1  comment    20
69         1  comment     0
70         1  comment     7
71         1  comment     7
72         1  comment    17
73         3  comment     3
74         1  comment    14
75         1  comment     2
76         1  comment    20
77         1  comment     0
78         1  comment     4
79         2  comment     0
80         1  comment     2
81         2  comment     2
82         3  comment    18
83         1  comment     5
84         3  comment     2
85         3  comment     2
86         1  comment    10
87         1  comment     2
88         3  comment     3
89         1  comment     3
90         1  comment     2
91         1  comment    13
92         2  comment     0
93         3  comment     9
94         3  comment     2
95         2  comment     2
96         3  comment     5
97         1  comment     3
98         2  comment     1
99         2  comment     7
100        1  comment    12
101        1  comment     0
102        2  comment    26
103        3  comment     2
104        1  comment     0
105        1  comment     4
106        1  comment    42
107        3  comment     9
108        2  comment    17
109        3  comment     7
110        2  comment     4
111        1  comment     2
112        1  comment     0
113        2  comment     4
114        2  comment     2
115        1  comment     0
116        1  comment     0
117        1  comment     1
118        1  comment     0
119        1  comment     0
120        1  comment     0
121        1  comment     0
122        2  comment     6
123        1  comment     1
124        1  comment     1
125        1  comment     0
126        1  comment     0
127        3  comment     3
128        1  comment     0
129        1  comment     0
130        1  comment     0
131        1  comment     0
132        1  comment     0
133        1  comment     1
134        1  comment     0
135        1  comment     2
136        1  comment     0
137        1  comment     0
138        1  comment     4
139        2  comment     0
140        1  comment     4
141        1  comment    15
142        3  comment     2
143        2  comment    60
144        3  comment    10
145        1  comment     3
146        1  comment     6
147        3  comment     0
148        3  comment     0
149        2  comment     3
150        1  comment     0
151        1  comment    24
152        2  comment     2
153        2  comment    47
154        1  comment     7
155        2  comment    13
156        2  comment     0
157        2  comment    16
158        3  comment     1
159        2  comment    30
160        2  comment     1
161        3  comment     6
162        2  comment     6
163        3  comment    22
164        2  comment     4
165        1  comment     0
166        2  comment     0
167        1  comment     2
168        3  comment     8
169        1  comment   144
170        2  comment     6
171        3  comment     3
172        1  comment     2
173        2  comment    38
174        1  comment     6
175        2  comment     5
176        2  comment     2
177        3  comment    29
178        1  comment     2
179        2  comment     7
180        2  comment     4
181        2  comment    20
182        1  comment     4
183        3  comment     1
184        1  comment     6
185        2  comment    11
186        1  comment     0
187        2  comment     5
188        2  comment     0
189        3  comment     1
190        2  comment     3
191        3  comment     2
192        3  comment     9
193        2  comment     0
194        2  comment     3
195        1  comment     6
196        2  comment     9
197        1  comment     2
198        2  comment     1
199        1  comment     0
200        3  comment    33
201        2  comment     2
202        1  comment     0
203        2  comment     2
204        3  comment     4
205        3  comment     2
206        1  comment     0
207        1  comment     4
208        2  comment     5
209        3  comment     1
210        2  comment     2
211        3  comment     6
212        3  comment     2
213        2  comment     3
214        3  comment     1
215        3  comment     4
216        1  comment     2
217        2  comment     2
218        2  comment    41
219        1  comment     3
220        3  comment    16
221        2  comment     2
222        3  comment     6
223        2  comment     1
224        2  comment    18
225        1  comment     2
226        2  comment     9
227        3  comment     3
228        1  comment     6
229        2  comment    64
230        2  comment     9
231        3  comment     2
232        3  comment     0
233        2  comment     6
234        1  comment     1
235        2  comment     1
236        2  comment     3
237        3  comment    12
238        2  comment     4
239        1  comment     2
240        2  comment    10
241        3  comment     6
242        1  comment     4
243        2  comment     9
244        1  comment    18
245        2  comment   372
246        1  comment     4
247        2  comment     0
248        2  comment     0
249        3  comment     1
250        2  comment     1
251        1  comment     4
252        1  comment     6
253        3  comment     6
254        2  comment    11
255        3  comment    10
256        2  comment    30
257        1  comment     2
258        1  comment     4
259        2  comment    10
260        3  comment     9
261        2  comment     0
262        1  comment    13
263        2  comment     2
264        2  comment     0
265        3  comment     7
266        3  comment     3
267        1  comment     2
268        2  comment    13
269        1  comment    26
270        1  comment     2
271        2  comment     6
272        1  comment     7
273        1  comment    22
274        3  comment     1
275        2  comment    18
276        2  comment    36
277        3  comment     0
278        1  comment    23
279        1  comment    11
280        1  comment     7
281        2  comment     1
282        2  comment     1
283        2  comment     0
284        1  comment     1
285        1  comment    11
286        2  comment     4
287        1  comment     0
288        1  comment    14
289        1  comment   103
290        1  comment     5
291        1  comment     0
292        2  comment     5
293        1  comment     0
294        2  comment     1
295        1  comment     0
296        1  comment     5
297        3  comment     5
298        3  comment     0
299        2  comment     0
300        1  comment     0
301        2  comment    11
302        3  comment     1
303        1  comment     9
304        3  comment     4
305        1  comment     0
306        3  comment     2
307        2  comment    12
308        3  comment     4
309        3  comment     3
310        3  comment     8
311        1  comment     0
312        3  comment     2
313        3  comment     2
314        3  comment     3
315        1  comment     0
316        3  comment     9
317        3  comment     0
318        2  comment     2
319        3  comment     2
320        2  comment    18
321        1  comment     0
322        3  comment     2
323        3  comment     2
324        3  comment    20
325        3  comment     2
326        3  comment     2
327        2  comment     1
328        3  comment     3
329        3  comment    16
330        3  comment     7
331        3  comment    20
332        3  comment     1
333        3  comment     0
 [ reached 'max' / getOption("max.print") -- omitted 1167 rows ]
> sub = d[c('Category','Post.Month','Post.Hour','Paid')]
> head(sub)
  Category Post.Month Post.Hour Paid
1        2         12         3    0
2        2         12        10    0
3        3         12         3    0
4        2         12        10    1
5        2         12         3    0
6        2         12         9    0
> cast(sub, Category ~ Post.Month, mean, value = 'Paid')
  Category         1         2         3         4         5          6         7         8         9        10        11         12
1        1 0.3333333 0.1666667 0.2580645 0.3181818 0.2000000 0.31578947 0.5000000 0.2222222 0.1111111 0.1891892 0.4242424 0.37500000
2        2        NA 1.0000000 0.0000000 0.6000000 0.0000000 0.09090909 0.3913043 0.3571429 0.2777778 0.2857143 0.0000000 0.09090909
3        3 0.1333333 0.2727273 0.0000000 0.4347826 0.3043478 0.31578947 0.2307692 0.2727273 0.5555556 0.1111111 0.1428571 0.16666667
