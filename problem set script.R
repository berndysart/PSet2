#Problem Set 2
#Bern DySart
#January 30, 2024

#Question 1---------
https://github.com/berndysart/PSet2.git

#Question 2---------

The following is my corrected code for the question below

library(tidyverse)
library(readr) #added readr to open the data
library(knitr) #need for kable function

  #open the data
    gspace = read_csv("greenspace_data_share.csv") #added quotation marks around data name
  #summarize average urban greenspace by region
    table = 
      gspace |>
      group_by(Major_Geo_Region) |> #added a pipe
        summarise( #indented since it goes further into the code
          obs = n(), #added a comma
          avg = mean(annual_avg_2020, na.rm = TRUE), #addeed na.rm = TRUE, added underscore between avg and 2020
          weightedavg = mean(annual_weight_avg_2020, na.rm = TRUE) #addeed na.rm = TRUE
        )
  # output as table
    kable(table, digits = 1) #table instead of gspace
    
#Question 3 ----------
 The greenspace data covers 1,038 urban greenspaces around the world

#Question 4 --------
    table2 = 
      gspace |>
      group_by(HDI_level) |> #added a pipe
      summarise( #indented since it goes further into the code
        obs = n(), #added a comma
        avg = mean(annual_avg_2021, na.rm = TRUE), #addeed na.rm = TRUE, added underscore between avg and 2020
        weightedavg = mean(annual_weight_avg_2021, na.rm = TRUE) #addeed na.rm = TRUE
      )
    kable(table2)
As seen in the following table, the classification scores were identified within the variable of HDI_level, with four options that were chosen
There are 395 observations tht were associated with the response of high, 94 with low, 289 with medium, and 260 with very high. The average score for all of them were below
0.5 in both the average and weighted average data for the year 2021.

#Question 5--------
