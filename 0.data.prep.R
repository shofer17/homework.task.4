#Query: Homwork task 4
#Supervisor: Piotr
#Date: 4.4.2021 
#This Document contains the data prep for the Homework task 4

rm(list = ls())

#install.packages("openxlsx")
library(openxlsx)
library(readxl)
library(gtalibrary)
library(tidyr)
library(dplyr)
gta_setwd()


countries = gtalibrary::country.names
dates = as.Date(c("2009-12-31", "2012-12-31", "2015-12-31", "2018-12-31"))

g20.plus.eu = countries %>% filter((is.g20 == TRUE) | (is.eu == TRUE)) %>% 
  select(c("name", "un_code", "is.eu"))

eu = filter(countries, is.eu == TRUE)

for (date in dates){
gtalibrary::gta_data_slicer(implementing.country = g20.plus.eu$name, affected.country = g20.plus.eu, implementation.period = 