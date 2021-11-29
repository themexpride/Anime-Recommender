from backend import Backend
from model import Model

testcount = 0
testpass = 0
testfailed = []

b = Backend()

print(b.query(366734715392360448, 10))

def testAnimeMap(name: str):
  global testcount, testpass, testfailed
  testcount += 1
  if (name == b._getNameFromId(b._getIdFromName(name))):
    testpass += 1
  else:
    testfailed += ["Anime Map - " + name]

testAnimeMap('Naruto')
testAnimeMap('Dragon Ball')

m = Model()

def testRatingMap(id: int):
  global testcount, testpass, testfailed
  testcount += 1
  if (id == m._dataToModel(m._modelToData(id))):
    testpass += 1
  else:
    testfailed += ["Rating Map - " + str(id)]

testRatingMap(10)
testRatingMap(20)

print('{} / {} tests passed'.format(testpass, testcount))
if len(testfailed):
  print(*testfailed, sep='\n')
