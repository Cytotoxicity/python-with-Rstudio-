pacman::p_load(readxl, reticulate)

py_install("xgboost", pip=T) #설치가 안 되면 pip=T 로 바꿔놓자!
py_install("lightgbm")
py_install("sklearn", pip=T)

conda_install("r-reticulate", "xgboost")

data <- read.csv("Data/credit.csv")

data_py <- r_to_py(data, convert=T)

data_py

a=3

data_py_r <- py$data_py

virtualenv_create()
virtualenv_install("r-reticulate", "xgboost")
virtualenv_python(envname = NULL)
virtualenv_list()

xgboost <- import("xgboost")
scipy <- import("scipy")
