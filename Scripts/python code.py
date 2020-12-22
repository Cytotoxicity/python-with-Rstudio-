import numpy as np
import pandas as pd
import xgboost as xgb
import lightgbm
from pycaret.classification import * 

clf = setup(data = r.train, target = 'voted')
best_3 = compare_models(sort = 'AUC', n_select = 3, verbose=False)Z
compare_models()
blended = blend_models(estimator_list = best_3, fold = 5, method = 'soft')
pred_holdout = predict_model(blended)
Z
