
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

> setwd("C:/Users/Saket/Desktop/Assignment 6")
> setwd("C:/Users/Saket/Desktop/Assignment6")
Error in setwd("C:/Users/Saket/Desktop/Assignment6") : 
  cannot change working directory
> getwd()
[1] "C:/Users/Saket/Desktop/Assignment 6"
> head(airquality)
  Ozone Solar.R Wind Temp Month Day
1    41     190  7.4   67     5   1
2    36     118  8.0   72     5   2
3    12     149 12.6   74     5   3
4    18     313 11.5   62     5   4
5    NA      NA 14.3   56     5   5
6    28      NA 14.9   66     5   6
> air=airquality
> head(air)
  Ozone Solar.R Wind Temp Month Day
1    41     190  7.4   67     5   1
2    36     118  8.0   72     5   2
3    12     149 12.6   74     5   3
4    18     313 11.5   62     5   4
5    NA      NA 14.3   56     5   5
6    28      NA 14.9   66     5   6
> summary(air)
     Ozone           Solar.R           Wind             Temp           Month            Day      
 Min.   :  1.00   Min.   :  7.0   Min.   : 1.700   Min.   :56.00   Min.   :5.000   Min.   : 1.0  
 1st Qu.: 18.00   1st Qu.:115.8   1st Qu.: 7.400   1st Qu.:72.00   1st Qu.:6.000   1st Qu.: 8.0  
 Median : 31.50   Median :205.0   Median : 9.700   Median :79.00   Median :7.000   Median :16.0  
 Mean   : 42.13   Mean   :185.9   Mean   : 9.958   Mean   :77.88   Mean   :6.993   Mean   :15.8  
 3rd Qu.: 63.25   3rd Qu.:258.8   3rd Qu.:11.500   3rd Qu.:85.00   3rd Qu.:8.000   3rd Qu.:23.0  
 Max.   :168.00   Max.   :334.0   Max.   :20.700   Max.   :97.00   Max.   :9.000   Max.   :31.0  
 NA's   :37       NA's   :7                                                                      
> mean(airquality$Ozone)
[1] NA
> mean(airquality$Ozone,na.rm=TRUE);
[1] 42.12931
> mean(airquality$Solar.R)
[1] NA
> mean(airquality$Solar.R,na.rm = TRUE);
[1] 185.9315
> summary(air)
     Ozone           Solar.R           Wind             Temp           Month            Day      
 Min.   :  1.00   Min.   :  7.0   Min.   : 1.700   Min.   :56.00   Min.   :5.000   Min.   : 1.0  
 1st Qu.: 18.00   1st Qu.:115.8   1st Qu.: 7.400   1st Qu.:72.00   1st Qu.:6.000   1st Qu.: 8.0  
 Median : 31.50   Median :205.0   Median : 9.700   Median :79.00   Median :7.000   Median :16.0  
 Mean   : 42.13   Mean   :185.9   Mean   : 9.958   Mean   :77.88   Mean   :6.993   Mean   :15.8  
 3rd Qu.: 63.25   3rd Qu.:258.8   3rd Qu.:11.500   3rd Qu.:85.00   3rd Qu.:8.000   3rd Qu.:23.0  
 Max.   :168.00   Max.   :334.0   Max.   :20.700   Max.   :97.00   Max.   :9.000   Max.   :31.0  
 NA's   :37       NA's   :7                                                                      
> air$Ozone=ifelse(is.na(air$Ozone),median(air$Ozone,na.rm = TRUE),air$Ozone)
> head(air)
  Ozone Solar.R Wind Temp Month Day
1  41.0     190  7.4   67     5   1
2  36.0     118  8.0   72     5   2
3  12.0     149 12.6   74     5   3
4  18.0     313 11.5   62     5   4
5  31.5      NA 14.3   56     5   5
6  28.0      NA 14.9   66     5   6
> air$Solar.R=ifelse(is.na(air$Solar.R),median(air$Solar.R,na.rm = TRUE),air$Solar.R)
> head(air)
  Ozone Solar.R Wind Temp Month Day
1  41.0     190  7.4   67     5   1
2  36.0     118  8.0   72     5   2
3  12.0     149 12.6   74     5   3
4  18.0     313 11.5   62     5   4
5  31.5     205 14.3   56     5   5
6  28.0     205 14.9   66     5   6
> summary(air)
     Ozone           Solar.R           Wind             Temp           Month            Day      
 Min.   :  1.00   Min.   :  7.0   Min.   : 1.700   Min.   :56.00   Min.   :5.000   Min.   : 1.0  
 1st Qu.: 21.00   1st Qu.:120.0   1st Qu.: 7.400   1st Qu.:72.00   1st Qu.:6.000   1st Qu.: 8.0  
 Median : 31.50   Median :205.0   Median : 9.700   Median :79.00   Median :7.000   Median :16.0  
 Mean   : 39.56   Mean   :186.8   Mean   : 9.958   Mean   :77.88   Mean   :6.993   Mean   :15.8  
 3rd Qu.: 46.00   3rd Qu.:256.0   3rd Qu.:11.500   3rd Qu.:85.00   3rd Qu.:8.000   3rd Qu.:23.0  
 Max.   :168.00   Max.   :334.0   Max.   :20.700   Max.   :97.00   Max.   :9.000   Max.   :31.0  
> air = cbind(air, Solar.Danger = ifelse(air$Solar.R > 100, TRUE, FALSE))
> head(air)
  Ozone Solar.R Wind Temp Month Day Solar.Danger
1  41.0     190  7.4   67     5   1         TRUE
2  36.0     118  8.0   72     5   2         TRUE
3  12.0     149 12.6   74     5   3         TRUE
4  18.0     313 11.5   62     5   4         TRUE
5  31.5     205 14.3   56     5   5         TRUE
6  28.0     205 14.9   66     5   6         TRUE
> brks=c(0,50,100,150,200,250,300,350)
> brks
[1]   0  50 100 150 200 250 300 350
> air$Solar.R=cut(air$Solar.R,breaks = brks,include.lowest = TRUE)
> head(air)
  Ozone   Solar.R Wind Temp Month Day Solar.Danger
1  41.0 (150,200]  7.4   67     5   1         TRUE
2  36.0 (100,150]  8.0   72     5   2         TRUE
3  12.0 (100,150] 12.6   74     5   3         TRUE
4  18.0 (300,350] 11.5   62     5   4         TRUE
5  31.5 (200,250] 14.3   56     5   5         TRUE
6  28.0 (200,250] 14.9   66     5   6         TRUE
> air1=air
> air1$Month=gsub(6,"June",air1$Month)
> air1$Month=gsub(5,"May",air1$Month)
> head(air1)
  Ozone   Solar.R Wind Temp Month Day Solar.Danger
1  41.0 (150,200]  7.4   67   May   1         TRUE
2  36.0 (100,150]  8.0   72   May   2         TRUE
3  12.0 (100,150] 12.6   74   May   3         TRUE
4  18.0 (300,350] 11.5   62   May   4         TRUE
5  31.5 (200,250] 14.3   56   May   5         TRUE
6  28.0 (200,250] 14.9   66   May   6         TRUE
> lab=c("sl4","sl5","sl6")
> teacher=c("pranali maam","sammir sir","ekta maam")
> subjectt=c("cn","sp","dsbda")
> summ=cbind(lab,teacher,subjectt)
> summ
     lab   teacher        subjectt
[1,] "sl4" "pranali maam" "cn"    
[2,] "sl5" "sammir sir"   "sp"    
[3,] "sl6" "ekta maam"    "dsbda" 
> summary(air)
     Ozone             Solar.R        Wind             Temp           Month            Day       Solar.Danger   
 Min.   :  1.00   [0,50]   :17   Min.   : 1.700   Min.   :56.00   Min.   :5.000   Min.   : 1.0   Mode :logical  
 1st Qu.: 21.00   (50,100] :17   1st Qu.: 7.400   1st Qu.:72.00   1st Qu.:6.000   1st Qu.: 8.0   FALSE:34       
 Median : 31.50   (100,150]:18   Median : 9.700   Median :79.00   Median :7.000   Median :16.0   TRUE :119      
 Mean   : 39.56   (150,200]:19   Mean   : 9.958   Mean   :77.88   Mean   :6.993   Mean   :15.8                  
 3rd Qu.: 46.00   (200,250]:37   3rd Qu.:11.500   3rd Qu.:85.00   3rd Qu.:8.000   3rd Qu.:23.0                  
 Max.   :168.00   (250,300]:36   Max.   :20.700   Max.   :97.00   Max.   :9.000   Max.   :31.0                  
                  (300,350]: 9                                                                                  
> # Input monthly mean in Ozone
> for (i in 1:nrow(air)){
+ if(is.na(air[i,"Ozone"])){
+ air[i,"Ozone"]<- mean(air[which(air[,"Month"]==air[i,"Month"]),"Ozone"],na.rm = TRUE)
+ }
+ # Input monthly mean in Solar.R
+ if(is.na(air[i,"Solar.R"])){
+ air[i,"Solar.R"]<- mean(air[which(air[,"Month"]==air[i,"Month"]),"Solar.R"],na.rm = TRUE)
+ }
+ }
> # Input monthly mean in Ozone
> for (i in 1:nrow(air)){
+ if(is.na(air[i,"Ozone"])){
+ air[i,"Ozone"]<- mean(air[which(air[,"Month"]==air[i,"Month"]),"Ozone"],na.rm = TRUE)
+ }
+ # Input monthly mean in Solar.R
+ if(is.na(air[i,"Solar.R"])){
+ air[i,"Solar.R"]<- mean(air[which(air[,"Month"]==air[i,"Month"]),"Solar.R"],na.rm = TRUE)
+ }
+ }
> #Normalize the dataset so that no particular attribute has more impact on clustering algorithm than others.
> normalize<- function(x){
+ return((x-min(x))/(max(x)-min(x)))
+ }
> air<- normalize(air)
 Error in FUN(X[[i]], ...) : 
  only defined on a data frame with all numeric-alike variables 
> air2=air
> require("datasets")
> str(airquality)
'data.frame':	153 obs. of  6 variables:
 $ Ozone  : int  41 36 12 18 NA 28 23 19 8 NA ...
 $ Solar.R: int  190 118 149 313 NA NA 299 99 19 194 ...
 $ Wind   : num  7.4 8 12.6 11.5 14.3 14.9 8.6 13.8 20.1 8.6 ...
 $ Temp   : int  67 72 74 62 56 66 65 59 61 69 ...
 $ Month  : int  5 5 5 5 5 5 5 5 5 5 ...
 $ Day    : int  1 2 3 4 5 6 7 8 9 10 ...
> head(airquality)
  Ozone Solar.R Wind Temp Month Day
1    41     190  7.4   67     5   1
2    36     118  8.0   72     5   2
3    12     149 12.6   74     5   3
4    18     313 11.5   62     5   4
5    NA      NA 14.3   56     5   5
6    28      NA 14.9   66     5   6
> air2=airquality
> summary(air2)
     Ozone           Solar.R           Wind             Temp           Month            Day      
 Min.   :  1.00   Min.   :  7.0   Min.   : 1.700   Min.   :56.00   Min.   :5.000   Min.   : 1.0  
 1st Qu.: 18.00   1st Qu.:115.8   1st Qu.: 7.400   1st Qu.:72.00   1st Qu.:6.000   1st Qu.: 8.0  
 Median : 31.50   Median :205.0   Median : 9.700   Median :79.00   Median :7.000   Median :16.0  
 Mean   : 42.13   Mean   :185.9   Mean   : 9.958   Mean   :77.88   Mean   :6.993   Mean   :15.8  
 3rd Qu.: 63.25   3rd Qu.:258.8   3rd Qu.:11.500   3rd Qu.:85.00   3rd Qu.:8.000   3rd Qu.:23.0  
 Max.   :168.00   Max.   :334.0   Max.   :20.700   Max.   :97.00   Max.   :9.000   Max.   :31.0  
 NA's   :37       NA's   :7                                                                      
> for (i in 1:nrow(air2)){
+ if(is.na(air2[i,"Ozone"])){
+ air2[i,"Ozone"]<- mean(air2[which(air2[,"Month"]==air2[i,"Month"]),"Ozone"],na.rm = TRUE)
+ }
+ if(is.na(air2[i,"Solar.R"])){
+ air2[i,"Solar.R"]<- mean(air2[which(air2[,"Month"]==air2[i,"Month"]),"Solar.R"],na.rm = TRUE)
+ }
+ }
> #Normalize the dataset so that no particular attribute has more impact on clustering algorithm than others.
> normalize<- function(x){
+ return((x-min(x))/(max(x)-min(x)))
+ }
> air2<- normalize(air2)
> str(air2)
'data.frame':	153 obs. of  6 variables:
 $ Ozone  : num  0.1201 0.1051 0.033 0.0511 0.0679 ...
 $ Solar.R: num  0.568 0.351 0.444 0.937 0.541 ...
 $ Wind   : num  0.0192 0.021 0.0348 0.0315 0.0399 ...
 $ Temp   : num  0.198 0.213 0.219 0.183 0.165 ...
 $ Month  : num  0.012 0.012 0.012 0.012 0.012 ...
 $ Day    : num  0 0.003 0.00601 0.00901 0.01201 ...
> Y<- air2[,"Ozone"] # select Target attribute
> X<- air2[,"Solar.R"] # select Predictor attribute
> model1<- lm(Y~X)
> plot(Y~X)
> abline(model1, col="blue", lwd=3) # add regression line to scatter plot to see relationship between X and Y
> Y<- air2[,"Ozone"] # select Target attribute
> X<- air2[,"Wind"] # select Predictor attribute
> model2<- lm(Y~X)
> model2 

Call:
lm(formula = Y ~ X)

Coefficients:
(Intercept)            X  
     0.2364      -4.3410  

> plot(Y~X)
> abline(model2, col="blue", lwd=3)
> p1<- predict(model1,data.frame("X"=10))
> p1
       1 
1.049993 
> p2<- predict(model2,data.frame("X"=5))
> p2
        1 
-21.46849 
