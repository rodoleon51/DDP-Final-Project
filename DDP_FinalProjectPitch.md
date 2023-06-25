



Developing Data Products - An evaluation of cars fuel efficiency
=================================
- Author: Rodolfo León
- Date: June 25, 2023
- Location: Lima, Perú


About the mtcars data set
=================================
The "mtcars" data was extracted from the 1974 Motor Trend US magazine, and comprises fuel consumption and 10 aspects of automobile design and performance for 32 automobiles (1973–74 models). It comes as a built-in dataset in R as data frame with 32 observations and 11 variables of numeric type.

The contents and the structure of the dataset are listed in the following slide.

Contents and Structure of the dataset
=================================
- mpg	Miles/(US) gallon
- cyl	Number of cylinders
- disp	Displacement (cu.in.)
- hp	Gross horsepower
- drat	Rear axle ratio
- wt	Weight (1000 lbs)
- qsec	1/4 mile time
- vs	Engine (0 = V-shaped, 1 = straight)
- am	Transmission (0 = automatic, 1 = manual)
- gear	Number of forward gears
- carb	Number of carburetors

***


```
'data.frame':	32 obs. of  11 variables:
 $ mpg : num  21 21 22.8 21.4 18.7 18.1 14.3 24.4 22.8 19.2 ...
 $ cyl : num  6 6 4 6 8 6 8 4 4 6 ...
 $ disp: num  160 160 108 258 360 ...
 $ hp  : num  110 110 93 110 175 105 245 62 95 123 ...
 $ drat: num  3.9 3.9 3.85 3.08 3.15 2.76 3.21 3.69 3.92 3.92 ...
 $ wt  : num  2.62 2.88 2.32 3.21 3.44 ...
 $ qsec: num  16.5 17 18.6 19.4 17 ...
 $ vs  : num  0 0 1 1 0 1 0 1 1 1 ...
 $ am  : num  1 1 1 0 0 0 0 0 0 0 ...
 $ gear: num  4 4 4 3 3 3 3 4 4 4 ...
 $ carb: num  4 4 1 1 2 1 4 2 2 4 ...
```

ggpairs Plot
=================================
![plot of chunk unnamed-chunk-3](DDP_FinalProjectPitch-figure/unnamed-chunk-3-1.png)

Documentation
================================
To view the analysis you may refer to:

https://ijelwr-rodolfo0leon.shinyapps.io/DDP_week4_RLeon/

https://github.com/rodoleon51/DDP-Final-Project

- The app compares each car model's design variable against fuel efficiency.
- On the 'Variable' dropdown menu choose the variable you want to compare.
- If you want to see the outliers in the Boxplot, check the box.
- When changing variables, press the 'Submit' button to see the result.
