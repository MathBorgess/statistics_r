library(quantmod)
library(shiny)
library(shinydashboard)
library(dplyr)
library(ggplot2)
library(DT)
library(tidyverse)
library(lubridate)

master_df <- read.csv('Amazon-2_Raw.csv')
category_array <- sort(master_df$Category %>% unique())

master_df$X <- NULL

master_df <- master_df %>% drop_na()

master_df$Date <- strptime(master_df$Order_Date, format='%m/%d/%Y')