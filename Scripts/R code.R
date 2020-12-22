pacman::p_load(readxl, reticulate)

data <- read.csv("Data/credit.csv")

data_py <- r_to_py(data, convert=T)

data_py

a=3

r_to_py(a)
