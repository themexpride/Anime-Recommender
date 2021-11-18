import discord
import os
import webserver
import token
#import test1
from webserver import keep_alive
from discord.ext import commands
import csv
from token import getToken

#intents = discord.Intents.default()
#intents.members = True
#To gather server members from whatever server the bot is in
#REQUIRES ENABLING "SERVER MEMBER INTENT" FROM THE DISCORD DEVELOPER PORTAL

class MyBot(commands.Bot):
    def __init__(self, command_prefix, self_bot):
        commands.Bot.__init__(self, command_prefix=command_prefix, self_bot=self_bot)
        self.message1 = "[INFO]: Bot now online"
        self.message2 = "Bot still online"
        self.add_commands()

    def add_commands(self):
        @self.command()
        async def embd(ctx):
            activeUser = ctx.message.author
            e = discord.Embed(
                title="Zero Two",
                url="https://us.rule34.xxx//images/4608/1603d38255486b28981da501b0da5801.jpeg?5249040",
                description="Anime girls won't fall for you dipshits", #SHEEEEEESH
                color=discord.Color.blue())
            e.set_author(name=activeUser, url='https://github.com/themexpride',icon_url=activeUser.avatar_url)
            e.set_image(url='https://us.rule34.xxx//images/4608/1603d38255486b28981da501b0da5801.jpeg?5249040')
            await ctx.send(embed=e)
        
        @self.command()
        async def hello(ctx):
          await ctx.send('Hello!')

    async def on_ready(self):
        print('We have logged in as {0.user}'.format(self))

    async def help(ctx):
        e = discord.Embed(
                title="Text Formatting",
                url="https://realdrewdata.medium.com/",
                description="Here are some ways to format text",
                color=discord.Color.blue())
        await ctx.send(embed=e)
            
class Search(commands.Bot):
  def __init__(self, command_prefix, self_bot):
    commands.Bot.__init__(self, command_prefix=command_prefix, self_bot=self_bot)
    self.message1 = "[INFO]: Bot now online"
    self.message2 = "Bot still online"
    self.add_commands()

  def search(to_search):
    #input anime you want to search
    anime = to_search.upper()

    #read csv, and split on "," the line
    csv_file = csv.reader(open('anime.csv', "r"), delimiter=",")

    flag = 0
    # print("Search Results:")
    results = []
    #loop through the csv list
    for row in csv_file:
        #if current row's 2nd value is equal to input, print that row
        if anime in row[1].upper():
            flag = 1
            results.append(row[1])

    #print numbered search result list
    for number, anime in enumerate(results):
        print(number+1, anime)

    #add anime to user list
    if flag == 0:
      print("Not found!\n")
    else:
      list_num = int(input("Which anime would you like to add to your list?"))
      user_choice = results[list_num - 1]
      print("\nAdded " + str(user_choice) + " to your watched list.\n")

  # @client.event
  async def on_message(message):
    # if message.author == client.user:
    #     return

    if message.content == '99!':
        # response = random.choice(brooklyn_99_quotes)
        await message.channel.send(response)

keep_alive()
b = MyBot(command_prefix = "!", self_bot = False)
b.run(os.environ[getToken])
