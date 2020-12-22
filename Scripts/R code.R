pacman::p_load(readxl, reticulate, xgboost)

install.packages("reticulate")

reticulate::repl_python()

use_condaenv("r-reticulate")
conda_list()
use_python()
use_python("C:\\Users\\kxusj\\Documents\\.virtualenvs\\r-reticulate\\python.exe")
Sys.which("python")

py_install("xgboost", pip=T) #설치가 안 되면 pip=T 로 바꿔놓자!
py_install("lightgbm", pip=T)
py_install("sklearn", pip=T)
py_install("numpy", pip=T) 
py_install("pycaret", pip=T)

conda_create()
conda_list()
conda_install(envname="r-reticulate", packages="pycaret")
conda_remove("r-reticulate")

conda_install("r-reticulate", "xgboost")

data <- read.csv("Data/titanic_train.csv")

data_py

a=3

data_py_r <- py$data_py

virtualenv_create()
virtualenv_install("r-reticulate", "xgboost")
virtualenv_python(envname = NULL)
virtualenv_list()

xgboost <- import("xgboost")
scipy <- import("scipy")

#xgboost 호환

