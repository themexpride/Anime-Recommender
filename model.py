import pandas as pd
import numpy as np
from typing import *

import os
os.environ['TF_CPP_MIN_LOG_LEVEL'] = '2'

from tensorflow import keras

class _Model:
  _model = None

  def __init__(self):
    model_ratings = pd.read_csv('rating2.csv')
    anime_ids = model_ratings['anime_id'].unique().tolist()

    self._data_to_model = { x: i for i, x in enumerate(anime_ids) }
    self._model_to_data = { i: x for i, x in enumerate(anime_ids) }

    user_ids = model_ratings["user_id"].unique().tolist()
    self._users = len(user_ids)

    # load model
    self._model = keras.models.load_model('temp_model')

  def _dataToModel(self, id: int) -> int:
    if id in self._data_to_model:
      return self._data_to_model[id]
    return -1

  def _modelToData(self, id: int) -> int:
    if id in self._model_to_data:
      return self._model_to_data[id]
    return -1

  def predict(self, count: int, user_ratings: List[Tuple[int,int]], not_watched: List[int]) -> List[int]:
      self._model.compile()
      weights = self._model.get_weights()

      tempin = []
      tempout = []

      for (showid, showrating) in user_ratings:
        tempin += [[self._users, self._dataToModel(showid)]]
        tempout += [(showrating-1)/9]

      inputs = np.array(tempin)
      outputs = np.array(tempout)
      self._model.fit(inputs, outputs)

      not_watched_model = []
      for i in not_watched:
        model_id = self._dataToModel(i)
        if model_id != -1: not_watched_model += [[model_id]]

      user_anime_array = np.hstack( ([[self._users]] * len(not_watched_model), not_watched_model) )

      results = self._model.predict(user_anime_array).flatten()
      top_result_model = results.argsort()[-1*count:][::-1]
      top_result_data = [ self._modelToData(not_watched_model[i][0]) for i in top_result_model ]

      self._model.set_weights(weights)
      return top_result_data

def Model():
  if _Model._model is None:
    _Model._model = _Model()
  return _Model._model
