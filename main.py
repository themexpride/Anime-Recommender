import discord
import os
from discord.ext import commands
import backend
import csv
import json
import asyncio
from typing import Union
import emoji

#intents = discord.Intents.default()
#intents.members = True
#To gather server members from whatever server the bot is in
#REQUIRES ENABLING "SERVER MEMBER INTENT" FROM THE DISCORD DEVELOPER PORTAL

class MyBot(commands.Bot):
    def __init__(self, command_prefix, self_bot):
        commands.Bot.__init__(self, command_prefix=command_prefix, self_bot=self_bot, help_command=None)
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
                description="Anime girls hate PD cause he's late to class", #SHEEEEEESH
                color=discord.Color.blue())
            e.set_author(name=activeUser, url='https://github.com/themexpride',icon_url=activeUser.avatar_url)
            e.set_image(url='https://us.rule34.xxx//images/4608/1603d38255486b28981da501b0da5801.jpeg?5249040')
            await ctx.send(embed=e)

        @self.command()
        async def rateAnime(ctx, *args):
            i = 0
            endMessage = 0
            e = discord.Embed(title = "Searching for your anime", description = "tick tock", color = discord.Color.green())
            msg = await ctx.send(embed=e)
            await asyncio.sleep(3)
            searchString = ''
            result_names = []
            while(i < 10):
                try:
                  assert(len(args)>0)
                  searchString = ' '.join(args)
                except:
                  activeUser = ctx.message.author
                  e = discord.Embed(
                    title = "Your Search Results",
                    description = "Anime not found.",
                    color = discord.Color.red()
                    )
                  e.set_author(name=activeUser, icon_url=activeUser.avatar_url)
                  await msg.edit(embed=e)
                  i = i+1
                else:
                  back = backend.Backend()
                  result_names = back.getSearchResultsInNames(searchString, 5)
                  result = back.getSearchResultsInNameFormatHelper(result_names)
                  activeUser = ctx.message.author
                  e = discord.Embed(
                      title = "Please choose from the following shows",
                      description = result,
                      color = discord.Color.blue()
                      )
                  e.set_author(name=activeUser, icon_url=activeUser.avatar_url)
                  await msg.edit(embed = e)
                  break
            if('No results found' in result_names[0] or i == 10):
              await msg.edit(embed = discord.Embed(title = "Error", description = "You have searched for shows not in our database. Please add a show in our database next time.", color = discord.Color.red()))
              await asyncio.sleep(5)
              await msg.delete()
              return

            eone = '1\U000020e3'
            etwo = '2\U000020e3'
            ethree  = '3\U000020e3'
            efour = '4\U000020e3'
            efive = '5\U000020e3'
            esix = '6\U000020e3'
            eseven = '7\U000020e3'
            eeight = '8\U000020e3'
            enine = '9\U000020e3'
            eten = '\U0001f51f'
            echeck = '\U00002705'
            ecross = '\U0000274c'

            emojis = [eone,etwo,ethree,efour,efive,esix,eseven,eeight,enine,eten,echeck,ecross]
            for i in range(len(result_names)):
              await msg.add_reaction(emojis[i])

            def check(reaction: discord.Reaction, u: Union[discord.Member, discord.User]):
              return u.id == ctx.author.id and reaction.message.channel.id == ctx.channel.id and str(reaction.emoji) in emojis

            showname = ''
            try:
              reaction, user = await self.wait_for(event = "reaction_add", timeout=90.0, check=check)
            except asyncio.TimeoutError:
              await msg.delete()
            else:
              # use discord reaction to get show name
              showname = result_names[emojis.index(reaction.emoji)]
              await msg.clear_reactions()
              await msg.edit(embed = discord.Embed(title = "Is this your show", description=showname, color=discord.Color.blue()))
              await msg.add_reaction(emojis[10])
              await msg.add_reaction(emojis[11])

            try:
              reaction, user = await self.wait_for(event = "reaction_add", timeout = 90.0, check=check)
            except asyncio.TimeoutError:
              await msg.delete()
            else:
               if (reaction.emoji == echeck):
                 # save show name
                 await msg.clear_reactions()
                 await msg.edit(embed = discord.Embed(title = "Confirmed show name. What would you rate this show?", description = "Please wait for all reactions (1-10) to appear.", color=discord.Color.blue()))
                 for i in range(10):
                   await msg.add_reaction(emojis[i])

                 try:
                   reaction, user = await self.wait_for(event = "reaction_add", timeout=90.0, check=check)
                 except asyncio.TimeoutError:
                   await msg.delete()
                 else:
                   user_rating = emojis.index(reaction.emoji)+1
                   print(user_rating)
                   finalconf = backend.Backend().addOrUpdateShow(ctx.author.id, showname, user_rating)
                   await msg.edit(embed = discord.Embed(title = "Confirmed rating.", description = finalconf, color=discord.Color.blue()))
                   await msg.clear_reactions()
                   await asyncio.sleep(90)
                   await msg.delete()
               else:
                 await msg.edit(embed = discord.Embed(title = "Sorry!", description = "You can run our bot again anytime", color=discord.Color.red()))
                 await asyncio.sleep(5)
                 await msg.delete()

        @self.command()
        async def getRec(ctx, *args):
          count = 0
          try:
            if (len(args) == 0): count = 10
            elif (len(args) == 1): count = int(args[0])
            assert (count > 0 and count < 16)
          except:
            activeUser = ctx.message.author
            e = discord.Embed(
                title="Recommended Shows for you",
                description="Insert valid number of shows (1 - 15)",
                color=discord.Color.red())
            e.set_author(name=activeUser, icon_url=activeUser.avatar_url)
            msg = await ctx.send(embed=e)
          else:
            result = backend.Backend().query(ctx.author.id, count)
            activeUser = ctx.message.author
            e = discord.Embed(
                title="Recommended Shows for you",
                description=result,
                color=discord.Color.blue())
            e.set_author(name=activeUser, icon_url=activeUser.avatar_url)
            msg = await ctx.send(embed=e)

        @self.command()
        async def searchAnime(ctx, *args):
          count = 0
          searchString = ''
          try:
            assert(len(args)>1)
            count = int(args[-1])
            assert(count > 0 and count < 11)
            searchString = ' '.join(args[:-1])
          except:
            activeUser = ctx.message.author
            e = discord.Embed(
                title = "Your Search Results",
                description = "Insert valid number of search results (1-10)",
                color = discord.Color.red()
                )
            e.set_author(name=activeUser, icon_url=activeUser.avatar_url)
            msg = await ctx.send(embed=e)
          else:
            back = backend.Backend()
            result = back.getSearchResultsInNameFormatHelper(back.getSearchResultsInNames(searchString, count))
            activeUser = ctx.message.author
            e = discord.Embed(
                title = "Your Search Results",
                description = result,
                color = discord.Color.blue()
                )
            e.set_author(name=activeUser, icon_url=activeUser.avatar_url)
            msg = await ctx.send(embed=e)

        @self.event
        async def on_command_error(ctx, error):
          activeUser = ctx.message.author
          e = discord.Embed(
              title="Error",
              description="Command not found. Please try again. Use !help to view a list of valid commands.",
              color=discord.Color.red()
              )
          e.set_author(name=activeUser, icon_url=activeUser.avatar_url)
          await ctx.send(embed=e)

        @self.command()
        async def help(ctx):
          e = discord.Embed(
              title="Commands",
              color=discord.Color.gold()
              )
          e.add_field(
              name="!searchAnime <search query> <# of results (1-10)>",
              value="Use this command to search for an anime in our database. Specify the command, a search query, and the number (1-10) of results you want generated.",
              inline=False
          )
          e.add_field(
              name="!getRec <# of recommendations (1-15)>",
              value="Use this command to get a specified number of recommendations from your anime list. Specify the command and the number (1-15) of results you want generated. ",
              inline=False
           )
          e.add_field(
              name="!rateAnime <show name>",
              value="Use this command to add a show or update a show's rating. Specify the command and the show name to search in our database and your anime list to then add to your list or update. Once the bot has the show, it adds/updates a show's rating when you click on the numbered reactions (1-10).",
              inline=False
          )
          e.add_field(
              name="!deleteRating <show name>",
              value="Use this command to delete a show from your anime list. Specify the command and the show name to search in your anime list and delete it.",
              inline=False
          )
          anime_url = "https://us.rule34.xxx//images/4608/1603d38255486b28981da501b0da5801.jpeg?5249040"
          e.set_author(name="Anime Recommender", icon_url=anime_url)
          await ctx.send(embed=e)

    async def on_ready(self):
        print('We have logged in as {0.user}'.format(self))


b = MyBot(command_prefix = "!", self_bot = False)
b.run(os.environ['TOKEN'])
