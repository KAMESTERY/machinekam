# Title     : Hello MachineKam
# Objective : Testing the Waters
# Created by: outcastgeek
# Created on: 10/23/18

# Import Libraries
library(reticulate)
use_condaenv("MACHINEKAM")

library(tidyverse)

# Do some Py work from R

os <- import("os")
os$listdir() # Lists the contents of the current directory

source_python("Py/flights.py")
flights <- read_flights("data/flights.csv", "MSP") # MSP Airport Data
# The Data is from Here: https://raw.githubusercontent.com/msamuel/hacks-pandas/master/flights.csv

flights %>% colnames() # The Column Names

ggplot(flights, aes(CARRIER, TAXI_IN)) +
  geom_point() +
  geom_jitter()
