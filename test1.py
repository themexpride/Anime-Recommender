from backend import Backend
from model import Model

b = Backend()
assert(b._getIdFromName('Naruto') == 20)
assert(b._getNameFromId(20) == 'Naruto')

m = Model()
assert(m._dataToModel(20) == 5)
assert(m._modelToData(5) == 20)

print('All tests passed')

