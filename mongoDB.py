from pymongo import MongoClient
from pprint import pprint

client = MongoClient(<mongodb+srv://mrioscardenas:%Imtex8311@cluster0.ftnor.mongodb.net/userDB?retryWrites=true&w=majority>)
db = client.admin

serverStatusResult = db.command("serverStatus")
pprint(serverStatusResult)
