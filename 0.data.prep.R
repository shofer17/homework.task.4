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

g20.plus.eu = countries %>% filter((is.g20 == TRUE) | (is.eu == TRUE)) %>% 
  select(c("name", "un_code", "is.eu"))

eu = filter(countries, is.eu == TRUE)


gtalibrary::gta_data_slicer(implementing.country = c()