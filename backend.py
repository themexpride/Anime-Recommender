import pandas as pd
import numpy as np
from mongoDB import getDB
from typing import *

from model import Model

db = getDB()

class _Backend:
  _backend = None

  def __init__(self):
    # load anime info
    self._animes = pd.read_csv('anime.csv')
    self._model = Model()

  def _isValidAnimeName(self, name: str) -> bool:
    return name in self._animes['name'].values

  def _isValidAnimeId(self, id: int) -> bool:
    return id in self._animes['anime_id'].values

  def _getIdFromName(self, name: str) -> int:
    if not self._isValidAnimeName(name):
      return -1
    return self._animes.loc[self._animes['name'] == name]['anime_id'].values[0]

  def _getNameFromId(self, id: int) -> str:
    if not self._isValidAnimeId(id):
      return "Invalid Id"
    return self._animes.loc[self._animes['anime_id'] == id]['name'].values[0]
  
  #Implemented search function (returns top10 name list) here
  def getSearchResultsInNames(self, name: str) -> List[str]: 
    new_list = [k for k in self._animes['name'].values if name.upper() in k.upper()]
    
    if new_list:
      return new_list[:10] #if results found, return top 10
    else:
      return [] #handling none found

  #Implemented search function (returns id list) here
  def getSearchResultsInIDs(self, name: str) -> List[int]: 
    results = []
    name_list = self.getSearchResultsInNames(name)
    if len(name_list) > 0:
      for i in name_list:
        results.append(self._getIdFromName(i))

    return results

  def query(self, id: int) -> List[str]:
    user = db.find_one( {"id" : id } )
    if user == None: return []

    user_animes = user['anime']
    user_ratings = []
    for i in user_animes:
      user_ratings.append( (i['id'], i['rating']) )
    return _model.predict(user_ratings)

def Backend():
  if _Backend._backend is None:
    _Backend._backend = _Backend()
  return _Backend._backend
