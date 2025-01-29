library(shiny)
library(bslib)
library(ggplot2)

config <- config::get()

data <- read.csv(config$filepath)
