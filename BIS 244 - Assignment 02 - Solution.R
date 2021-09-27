# Solution file for BIS 244 Assignment 02, Fall 2020

# Clear out Console and Environment
rm(list=ls(all=TRUE))
cat("\014")

# Let's read in the us-counties file from covid-19-data

# We'll use packages readr, which is part of the tidyverse,
# and here
library(tidyverse)
library(here)

# Reading the us-states.csv in as a data frame
STATES <- read_csv(here("covid-19-data","us-states.csv")

# Examining the data
# View(STATES)

# Using filter()to get just Snohomish county in Washington
PA <- filter(STATES, state=="Pennsylvania")
# View(PA)

# Set n to legth of data set
n <- length(PA$date)

# Initialize new variables in data frame
PA$incr_deaths <- 0
PA$incr_cases <- 0

# Calculate values for incremental cases and deatchs
for (i in 2:n) {
  incr_cases[i] <- cases[i] - cases[i-1]
  incr_deaths[i] <- deaths[i] - deaths[i-1]
  
}

# Calculating sum of all adjusted deaths as checksum
sd(PA$incr_cases)
