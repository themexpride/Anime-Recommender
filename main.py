import discord
import os
from discord.ext import commands
import backend
import csv
import json

#intents = discord.Intents.default()
#intents.members = True
#To gather server members from whatever server the bot is in
#REQUIRES ENABLING "SERVER MEMBER INTENT" FROM THE DISCORD DEVELOPER PORTAL

class Search(commands.Bot):
  def __init__(self, command_prefix, self_bot):
    commands.Bot.__init__(self, command_prefix=command_prefix, self_bot=self_bot)
    self.message1 = "[INFO]: Bot now online"
    self.message2 = "Bot still online"
    self.add_commands()

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
                description="Anime girls will only fall for PD", #SHEEEEEESH
                color=discord.Color.blue())
            e.set_author(name=activeUser, url='https://github.com/themexpride',icon_url=activeUser.avatar_url)
            e.set_image(url='https://us.rule34.xxx//images/4608/1603d38255486b28981da501b0da5801.jpeg?5249040')
            await ctx.send(embed=e)

        @self.command()
        async def hello(ctx):
          await ctx.send('Hello!')

        @self.command()
        async def anirec(ctx):
            animeChannel = self.get_channel(int(os.environ['CHANNEL_ID']))
            if(ctx.message.author == self.user):
                return
            if(animeChannel == ctx.message.channel):
                view = discord.ui.View()
                item = discord.ui.Button(style=discord.ButtonStyle.blurple, label="Click Me", url="https://cdn0.iconfinder.com/data/icons/feather/96/591276-arrow-right-512.png")
                view.add_item(item=item)
                await ctx.send("This message has a button!", view=view)



    async def on_ready(self):
        print('We have logged in as {0.user}'.format(self))

    async def help(ctx):
        e = discord.Embed(
                title="Text Formatting",
                url="https://realdrewdata.medium.com/",
                description="Here are some ways to format text",
                color=discord.Color.blue())
        await ctx.send(embed=e)

b = MyBot(command_prefix = "!", self_bot = False)
b.run(os.environ['TOKEN'])
