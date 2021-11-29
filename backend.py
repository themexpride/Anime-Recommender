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
  def getSearchResultsInNames(self, name: str, count: int) -> List[str]: 
    new_list = [k for k in self._animes['name'].values if name.upper() in k.upper()]
    ans = ""
    if new_list:
      return new_list[:count] #if results found, return top 10
    else:
      return ["No results found"] #handling none found error

  #Implemented search function (returns id list) here
  def getSearchResultsInIDs(self, name: str) -> List[int]: 
    results = []
    ans = ""
    name_list = self.getSearchResultsInNames(name)
    if len(name_list) > 0:
      for i in name_list:
        results.append(self._getIdFromName(i))
    return results
  
  def getSearchResultsInNameFormatHelper(self, list: List[int]) -> str:
    ans = ''
    for i in range(len(list)):
      ans += str(i+1)+". "+list[i]+"\n\n"
    return ans

  def query(self, id: int, count: int) -> str:
    user = db.AniRecDBCol.find_one( {'id' : id } )
    if user == None: return "User has not rated any shows."

    user_animes = user['anime']
    user_ratings = []
    user_anime_ids = []
    for i in user_animes:
      user_ratings.append( (i['id'], i['rating']) )
      user_anime_ids.append( i['id'] )

    if len(user_anime_ids) < 5: return "User has not rated enough shows."

    animes_watched = pd.DataFrame(user_anime_ids)
    animes_not_watched = self._animes[ ~self._animes["anime_id"].isin(user_anime_ids) ]["anime_id"]

    new_list = Model().predict(count, user_ratings, animes_not_watched.tolist())

    results = []
    for i in new_list:
      results.append(self._getNameFromId(i))
    if len(results) < 1: results += "No results found"
    ans = ""
    for i in range(len(results)):
       ans += str(i+1)+". "+results[i]+"\n\n"
    return ans

  def addOrUpdateShow(self, userid: int, showname: str, rating: int) -> str:
    showid = self._getIdFromName(showname)
    if showid == -1:
      return "Invalid show name"
    user = db.AniRecDBCol.find_one( {'id' : userid} )
    newShow = {'id': showid, 'rating': rating}
    if user == None:
      user = {'id':userrid, 'anime': [newShow]}
      db.AniRecDBCol.insert_one( user )
    else:
      user_animes = user['anime']
      user_anime_ids = {}
      for i in range(len(user_animes)):
        user_anime_ids[ user_animes[i]['id'] ] = i
      if showid in user_anime_ids:
        user_animes[user_anime_ids[showid]] = newShow
        return "Show rating updated successfully."
      user_animes.append(newShow)
      db.AniRecDBCol.update_one( {'id': userid}, {"$set": {'anime': user_animes} } )
    return "Show rated successfully."

  def deleteShow(self, userid: int, showname, str) -> str:
    showid = self._getIdFromName(showname)
    if showid == -1:
      return "Invalid show name"
    user = db.AniRecDBCol.find_one( {'id' : userid} )
    if user == None:
      return "User has not rated any shows."
    user_animes = user['anime']
    user_anime_ids = {}
    for i in range(len(user_animes)):
      user_anime_ids[ user_animes[i]['id'] ] = i
    if showid not in user_anime_ids:
      return "User has not rated this show."
    user_animes = user_animes.pop(user_anime_ids[showid])
    db.AniRecDBCol.update_one( {'id': userid}, {"$set": {'anime': user_animes} } )
    return "Show deleted successfully."

def Backend():
  if _Backend._backend is None:
    _Backend._backend = _Backend()
  return _Backend._backend
