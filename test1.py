
from backend import Backend
from model import Model

# b = Backend()
# print(b._getIdFromName('Naruto'))
# print(b._getNameFromId(20))

m = Model()
print(m._dataToModel(20))
print(m._modelToData(5))