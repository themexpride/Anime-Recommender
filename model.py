import pandas as pd
import numpy as np
from tensorflow import keras
from typing import *

import os
os.environ['TF_CPP_MIN_LOG_LEVEL'] = '2'


class _Model:
  _model = None

  def __init__(self):
    model_ratings = pd.read_csv('rating2.csv')
    anime_ids = model_ratings['anime_id'].unique().tolist()

    self._data_to_model = { x: i for i, x in enumerate(anime_ids) }
    self._model_to_data = { i: x for i, x in enumerate(anime_ids) }

    # load model
    self._model = keras.models.load_model('temp_model', compile = True)

  def _dataToModel(self, id: int) -> int:
    if id in self._data_to_model:
      return self._data_to_model[id]
    return -1

  def _modelToData(self, id: int) -> int:
    if id in self._model_to_data:
      return self._model_to_data[id]
    return -1

  def predict(self, id: int, count: int, user_ratings: List[Tuple[int,int]], not_watched: List[int]) -> List[int]:
    not_watched_model = []
    for i in not_watched:
      model_id = self._dataToModel(i)
      if model_id != -1: not_watched_model += [[model_id]]

    user_anime_array = np.hstack( ([[2]] * len(not_watched_model), not_watched_model) )

    results = self._model.predict(user_anime_array).flatten()
    top_result_model = results.argsort()[-1*count:][::-1]
    top_result_data = [ self._modelToData(not_watched_model[i][0]) for i in top_result_model ]
    return top_result_data

def Model():
  if _Model._model is None:
    _Model._model = _Model()
  return _Model._model
