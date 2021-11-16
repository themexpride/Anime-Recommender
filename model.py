import pandas as pd
from tensorflow import keras


class _Model:
  _model = None

  def __init__(self):  
    model_ratings = pd.read_csv('rating2.csv')
    anime_ids = model_ratings['anime_id'].unique().tolist()

    self._data_to_model = { x: i for i, x in enumerate(anime_ids) }
    self._model_to_data = { i: x for i, x in enumerate(anime_ids) }

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

def Model():
  if _Model._model is None:
    _Model._model = _Model()
  return _Model._model
