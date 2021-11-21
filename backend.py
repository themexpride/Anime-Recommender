import pandas as pd
import numpy as np

class _Backend:
  _backend = None

  def __init__(self):
    # load anime info
    self._animes = pd.read_csv('anime.csv')

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
  def _getSearchResultsInNames(self, name: str) -> str: 
    new_list = [k for k in self._animes['name'].values if name.upper() in k.upper()]
    
    if new_list:
      return new_list[:10] #if results found, return top 10
    else:
      return "No results found" #handling none found

  #Implemented search function (returns top10 id list) here
  def _getSearchResultsInIDs(self, name: str) -> str: 
    results = []
    new_list = [k for k in self._animes['name'].values if name.upper() in k.upper()]
    
    if new_list:
      for i in new_list[:10]:
        results.append(self._getIdFromName(i))
      return results #if results found, return top 10
    else:
      return "No results found" #handling none found
  

def Backend():
  if _Backend._backend is None:
    _Backend._backend = _Backend()
  return _Backend._backend