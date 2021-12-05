import pandas as pd
import numpy as np
from typing import *

import os
os.environ['TF_CPP_MIN_LOG_LEVEL'] = '2'

from tensorflow import keras

class _Model:
  _model = None

  # initialize the singleton model instance,
  # read the ratings file to set up mappings between
  # dataset ids and model ids, load the trained model,
  # count number of users
  def __init__(self):
    model_ratings = pd.read_csv('rating2.csv')
    anime_ids = model_ratings['anime_id'].unique().tolist()

    self._data_to_model = { x: i for i, x in enumerate(anime_ids) }
    self._model_to_data = { i: x for i, x in enumerate(anime_ids) }

    user_ids = model_ratings["user_id"].unique().tolist()
    self._users = len(user_ids)

    # load the selected model
#    self._model = keras.models.load_model('80_64_5epoch_model')
    self._model = keras.models.load_model('ANIME64_model_0.001')
#    self._model = keras.models.load_model('my_model')
#    self._model = keras.models.load_model('temp_model')

  # private helper function to map between dataset id and model id
  def _dataToModel(self, id: int) -> int:
    if id in self._data_to_model:
      return self._data_to_model[id]
    return -1

  # private helper function to map between model id and dataset id
  def _modelToData(self, id: int) -> int:
    if id in self._model_to_data:
      return self._model_to_data[id]
    return -1

  # public function for prediction
  # input: number of recommended shows, list of ratings (dataset id + rating), list of unwatched shows (dataset id)
  # output: list of recommended shows (dataset id)
  def predict(self, count: int, user_ratings: List[Tuple[int,int]], not_watched: List[int]) -> List[int]:
      # compile and save the trained model weights
      self._model.compile()
      weights = self._model.get_weights()

      # arrange input for the model
      tempin = []
      tempout = []
      for (showid, showrating) in user_ratings:
        tempin += [[self._users, self._dataToModel(showid)]]
        tempout += [(showrating-1)/9] # normalize ratings

      # train model on inputs
      inputs = np.array(tempin)
      outputs = np.array(tempout)
      self._model.fit(inputs, outputs)

      # convert unwatched shows to their model ids
      not_watched_model = []
      for i in not_watched:
        model_id = self._dataToModel(i)
        if model_id != -1: not_watched_model += [[model_id]]

      # model prediction
      user_anime_array = np.hstack( ([[self._users]] * len(not_watched_model), not_watched_model) )
      results = self._model.predict(user_anime_array).flatten()

      # sort and convert top results to dataset ids
      top_result_model = results.argsort()[-1*count:][::-1]
      top_result_data = [ self._modelToData(not_watched_model[i][0]) for i in top_result_model ]

      # restore the state to the trained model
      self._model.set_weights(weights)

      return top_result_data

# singleton constructor function
def Model():
  if _Model._model is None:
    _Model._model = _Model()
  return _Model._model
