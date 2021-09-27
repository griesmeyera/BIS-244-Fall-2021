## Load usual packages into memory
library(gapminder)
library(here)
library(tidyverse)
library(socviz)

## 2.3 Things to Know about R
## Crtl + L to clear console screen 

# Review of Assignment
c(1, 2, 3, 1, 3, 5, 25)
## c command: creates a vector of numeric value 
my_numbers <- c(1, 2, 3, 1, 3, 5, 25)
## vector is stored in memory but will not display on console
your_numbers <- c(5, 31, 71, 1, 3, 21, 6)
my_numbers
## displays on console 
#To display on console the my_numbers command needs to follow the command above
#with no space in between

# Review of functions
?mean()
mean()
mean(x = my_numbers)
mean(x = your_numbers)


my_summary <- summary(my_numbers)
## gives summary statistics 
my_summary

table(my_numbers)

sd(my_numbers)
## sd = standard deviation

my_numbers * 5

my_numbers + 1

my_numbers + my_numbers

# Descriptive functions
class(my_numbers)
class(my_summary)
class(summary)
## class command means it will give the type of class it is in the console 


# Be careful appending values that are of different type
my_new_vector <- c(my_numbers, "Apple")
my_new_vector
class(my_new_vector)
## when you add parenthesis to numeric storage location, it will change it to a character 
## you can not do numeric/ math with character values 


# Data from from socviz library
titanic
class(titanic)
titanic$percent


# Converting to a tidyverse tibble
titanic_tb <- as_tibble(titanic)
## tibble is a table or data frame that adds metadata 
## array - all numeric values 
## table -  all character values 
## data frame - a collection of different vectors that are numeric or characters 
titanic_tb
class(titanic_tb$fate)
## specificy a specific column title by using $ 
## a factor is a grouping variable for characters 

# Using str

str(my_numbers)
str(my_summary)

## 2.4 Be Patient with R, and with Yourself
# ggplot() simple example
ggplot(data = mpg, aes(x = displ, y = hwy)) + 
  geom_point()
## its good to split a line with a plus sign such as the line of codes above 



# How NOT to continue a line...

ggplot(data = mpg, aes(x = displ, y = hwy))
+ geom_point()


## 2.5 Get Data into R

url <- "https://cdn.rawgit.com/kjhealy/viz-organdata/master/organdonation.csv"
 
organs <- read.csv(file = url)
# this is the built in file reader for csv files 

organs <- read_csv(file = "dataviz_course_notes/data/organdonation.csv")

organs

## 2.6 Make Your First Figure
gapminder

# ----first_plot, fig.height=6, fig.width=10, fig.cap="Life expectancy plotted against GDP per capita for a large number of country-years."----

p <- ggplot(data = gapminder,
            mapping = aes(x = gdpPercap, y = lifeExp))
p
p + geom_point() + 
  geom_smooth(mapping = aes(color = continent, fill = continent)) + 
  scale_x_log10(labels = scales::dollar)

  # That's all


