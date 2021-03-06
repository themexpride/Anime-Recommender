import discord
import os
from discord.ext import commands
import backend
import csv
import json
import asyncio
from typing import Union

#intents = discord.Intents.default()
#intents.members = True
#To gather server members from whatever server the bot is in
#REQUIRES ENABLING "SERVER MEMBER INTENT" FROM THE DISCORD DEVELOPER PORTAL

# create a Discord bot class that passes the Bot element from the commands extension from Discord.py
class MyBot(commands.Bot):
    # initialize the class by setting up commands.Bot with the self object, the command prefix, and the self_bot set as False
    # we also add the add_commands function
    def __init__(self, command_prefix, self_bot):
        commands.Bot.__init__(self, command_prefix=command_prefix, self_bot=self_bot, help_command=None)
        self.message1 = "[INFO]: Bot now online"
        self.message2 = "Bot still online"
        self.add_commands()

    # setup commands for the bot
    def add_commands(self):
#        @self.command()
#        async def embd(ctx):
#            activeUser = ctx.message.author
#            e = discord.Embed(
#                title="Zero Two",
#                url="https://us.rule34.xxx//images/4608/1603d38255486b28981da501b0da5801.jpeg?5249040",
#                description="Anime girls hate PD cause he's late to class", #SHEEEEEESH
#                color=discord.Color.blue())
#            e.set_author(name=activeUser, url='https://github.com/themexpride',icon_url=activeUser.avatar_url)
#            e.set_image(url='https://us.rule34.xxx//images/4608/1603d38255486b28981da501b0da5801.jpeg?5249040')
#            await ctx.send(embed=e)

        # command to rate anime by calling the command and adding the anime query
        @self.command()
        async def rateAnime(ctx, *args):

            # emojis
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

            endMessage = 0
            # message sent to user that we're searching for anime
            e = discord.Embed(title = "Searching for your anime", description = "tick tock", color = discord.Color.green())
            msg = await ctx.send(embed=e)
            await asyncio.sleep(3)

            # pull the names from the backend
            searchString = ''
            result_names = []
            try:
              assert(len(args)>0)
              searchString = ' '.join(args)
            # send user an error if they don't add a show name and delete it afterwards
            except:
              activeUser = ctx.message.author
              e = discord.Embed(
                  title = "Your Search Results",
                  description = "Missing show name. Refer to !help for more details.",
                  color = discord.Color.red()
                  )
              e.set_author(name=activeUser, icon_url=activeUser.avatar_url)
              await msg.edit(embed=e)
              await asyncio.sleep(10)
              await msg.delete()
              return
            # if we have a show name
            else:
              back = backend.Backend() # grab the backend object
              # search for anime in the backend and grab results
              result_names = back.getSearchResultsInNames(searchString, 5)
              result = back.getSearchResultsInNameFormatHelper(result_names)
              # send search results
              activeUser = ctx.message.author
              e = discord.Embed(
                  title = "Please choose from the following shows",
                  description = result,
                  color = discord.Color.blue()
                  )
              e.set_author(name=activeUser, icon_url=activeUser.avatar_url)
              e.set_footer(text="To cancel, press "+ecross)
              await msg.edit(embed = e)
            # if no results found in backend
            if len(result_names) > 0 and 'No results found' in result_names[0]:
              await msg.edit(embed = discord.Embed(title = "Error", description = "You have searched for shows not in our database. Please add a show in our database next time.", color = discord.Color.red()))
              await asyncio.sleep(5)
              await msg.delete()
              return

            # add reactions to search results
            for i in range(len(result_names)):
              await msg.add_reaction(emojis[i])
            await msg.add_reaction(ecross)
            # function to only allow user to control the bot's reactions
            def check(reaction: discord.Reaction, u: Union[discord.Member, discord.User]):
              return u.id == ctx.author.id and reaction.message.id == msg.id and str(reaction.emoji) in emojis

            # wait for user reaction
            showname = ''
            try:
              reaction, user = await self.wait_for(event = "reaction_add", timeout=90.0, check=check)
            except asyncio.TimeoutError:
              await msg.delete()
              return
            else:
              # if user clicks on the x reaction, then close the bot
              if reaction.emoji == ecross:
                await msg.delete()
                return
              # confirmation message that user reacts to
              showname = result_names[emojis.index(reaction.emoji)]
              await msg.clear_reactions()
              await msg.edit(embed = discord.Embed(title = "Is this your show?", description=showname, color=discord.Color.blue()))
              await msg.add_reaction(echeck)
              await msg.add_reaction(ecross)

            # wait for user reaction
            try:
              reaction, user = await self.wait_for(event = "reaction_add", timeout = 90.0, check=check)
            except asyncio.TimeoutError:
              await msg.delete()
              return
            else:
               # if user confirms the show
               if (reaction.emoji == echeck):
                 await msg.clear_reactions()
                 await msg.edit(embed = discord.Embed(title = "Confirmed show name. What would you rate this show?", description = "Please wait for all reactions (1-10) to appear.", color=discord.Color.blue()))
                 # generate rating reactions
                 for i in range(10):
                   await msg.add_reaction(emojis[i])
                 # user rates the show
                 try:
                   reaction, user = await self.wait_for(event = "reaction_add", timeout=90.0, check=check)
                 except asyncio.TimeoutError:
                   await msg.delete()
                   return
                 else:
                   user_rating = emojis.index(reaction.emoji)+1
                   # add user rating to the backend
                   finalconf = backend.Backend().addOrUpdateShow(ctx.author.id, showname, user_rating)
                   await msg.edit(embed = discord.Embed(title = "Confirmed rating.", description = finalconf, color=discord.Color.blue()))
                   await msg.clear_reactions()
                   await asyncio.sleep(60)
                   await msg.delete()
               # if confirmation failed when user clicks x
               else:
                 await msg.edit(embed = discord.Embed(title = "Oops! That was the wrong show name.", description = "You can run our bot again anytime", color=discord.Color.red()))
                 await asyncio.sleep(5)
                 await msg.delete()

        # command to show user's show ratings
        @self.command()
        async def showRatings(ctx):
          activeUser = ctx.message.author
          # grab the user's shows from the backend
          result = backend.Backend().viewShows(ctx.author.id)
          # if user has not rated any shows
          if len(result) == 0:
            e = discord.Embed(
                title="Your show ratings:",
                description="You have not rated any shows",
                color=discord.Color.red()
                )
            e.set_author(name=activeUser, icon_url=activeUser.avatar_url)
            msg = await ctx.send(embed=e)
            await asyncio.sleep(5)
            await msg.delete()
            return
          # crate a table of the user's ratings as a string and display
          table = "\n"
          for i in range(len(result)):
            table += "??? **"+result[i][0]+":** " + result[i][1] + "\n"
          output = f"{table}"
          e = discord.Embed(
              title="Your show ratings:",
              description=output,
              color=discord.Color.blue()
              )
          e.set_author(name=activeUser, icon_url=activeUser.avatar_url)
          msg = await ctx.send(embed=e)
          await asyncio.sleep(20)
          await msg.delete()

        # command to delete a user's rating for a show
        @self.command()
        async def deleteRating(ctx, *args):
          activeUser = ctx.message.author
          show_name = ""
          # make sure user enters a show
          try:
            assert(len(args)>0)
            show_name = ' '.join(args)
          # if no show, then display error and delete it afterwards
          except:
            e = discord.Embed(
                title = "Your deletion request:",
                description = "Missing show name. Refer to !help for more details.",
                color = discord.Color.red()
                )
            e.set_author(name=activeUser, icon_url=activeUser.avatar_url)
            msg = await ctx.send(embed=e)
            await asyncio.sleep(10)
            await msg.delete()
            return
          else:
            # delete show name from the backend, must be specific show
            result = backend.Backend().deleteShow(ctx.author.id, show_name)
            if 'successfully' in result:
              e = discord.Embed(
                  title = "Your deletion request:",
                  description = result,
                  color = discord.Color.blue()
                  )
              e.set_author(name=activeUser, icon_url=activeUser.avatar_url)
              msg = await ctx.send(embed=e)
              await asyncio.sleep(15)
              await msg.delete()
            else:
              e = discord.Embed(
                  title = "Your deletion request:",
                  description = result,
                  color = discord.Color.red()
                  )
              e.set_author(name=activeUser, icon_url=activeUser.avatar_url)
              msg = await ctx.send(embed=e)
              await asyncio.sleep(15)
              await msg.delete()

        # command to get recommended shows from user's list of shows
        @self.command()
        async def getRec(ctx, *args):
          count = 0
          # by default, user can retrive 10 shows, otherwise user retrives the specified number of shows
          try:
            if (len(args) == 0): count = 10
            elif (len(args) == 1): count = int(args[0])
            assert (count > 0 and count < 16)
          # if user asks for shows outside the 1-15 range, send error message
          except:
            activeUser = ctx.message.author
            e = discord.Embed(
                title="Recommended shows for you",
                description="Insert valid number of shows (1 - 15)",
                color=discord.Color.red())
            e.set_author(name=activeUser, icon_url=activeUser.avatar_url)
            msg = await ctx.send(embed=e)
          else:
            # get results from backend and display
            result = backend.Backend().query(ctx.author.id, count)
            activeUser = ctx.message.author
            e = discord.Embed(
                title="Recommended shows for you",
                description=result,
                color=discord.Color.blue())
            e.set_author(name=activeUser, icon_url=activeUser.avatar_url)
            msg = await ctx.send(embed=e)

        # @self.command()
        #   activeUser = ctx.message.author
        #   e = discord.Embed(
        #          title = "Rating Prof. Navid Shaghaghi",
        #          description = "What would you rate him",
        #          color=discord.Color.green())
        #   e.set_author(name=activeUser, icon_url=activeUser.avatar_url)
        #   e.set_image(url="https://www.scu.edu/media/college-of-arts-and-sciences/math-and-cs/faculty-amp-staff/Navid-Shaghaghi-1-261x271.jpg")
        #   msg = await ctx.send(embed=e)
        #   eone = '1\U000020e3'
        #   etwo = '2\U000020e3'
        #   ethree  = '3\U000020e3'
        #   efour = '4\U000020e3'
        #   efive = '5\U000020e3'
        #   esix = '6\U000020e3'
        #   eseven = '7\U000020e3'
        #   eeight = '8\U000020e3'
        #   enine = '9\U000020e3'
        #   eten = '\U0001f51f'
        #   echeck = '\U00002705'
        #   ecross = '\U0000274c'
        #
        #   emojis = [eone,etwo,ethree,efour,efive,esix,eseven,eeight,enine,eten,echeck,ecross]
        #
        #   for i in range(10):
        #       await msg.add_reaction(emojis[i])
        #   await msg.add_reaction(ecross)
        #
        #   def check(reaction: discord.Reaction, u: Union[discord.Member, discord.User]):
        #       return u.id == ctx.author.id and reaction.message.id == msg.id and str(reaction.emoji) in emojis
        #
        #   try:
        #       reaction, user = await self.wait_for(event = "reaction_add", timeout=90.0, check=check)
        #   except asyncio.TimeoutError:
        #       await msg.delete()
        #       return
        #   else:
        #       # use discord reaction to get show name
        #        if reaction.emoji == ecross:
        #          await msg.clear_reactions()
        #          await msg.delete()
        #          return
        #        else:
        #          await msg.clear_reactions()
        #          e = discord.Embed(title = "Your rating doesn't matter", description = "Navid is the best", color = discord.Color.blue())
        #          e.set_image(url="https://www.beepods.com/wp-content/uploads/2020/05/15542464_10154636192565944_4173060157659889425_n.jpg")
        #          await msg.edit(embed=e)
        #          return

#        @self.command()
#        async def searchAnime(ctx, *args):
#          count = 0
#          searchString = ''
#          try:
#            assert(len(args)>1)
#            count = int(args[-1])
#            assert(count > 0 and count < 11)
#            searchString = ' '.join(args[:-1])
#          except:
#            activeUser = ctx.message.author
#            e = discord.Embed(
#                title = "Your Search Results",
#                description = "Insert valid number of search results (1-10)",
#                color = discord.Color.red()
#                )
#            e.set_author(name=activeUser, icon_url=activeUser.avatar_url)
#            msg = await ctx.send(embed=e)
#          else:
#            back = backend.Backend()
#            result = back.getSearchResultsInNameFormatHelper(back.getSearchResultsInNames(searchString, count))
#            activeUser = ctx.message.author
#            e = discord.Embed(
#                title = "Your Search Results",
#                description = result,
#                color = discord.Color.blue()
#                )
#            e.set_author(name=activeUser, icon_url=activeUser.avatar_url)
#            msg = await ctx.send(embed=e)

        # for any errors encountered that are not taken into account
        @self.event
        async def on_command_error(ctx, error):
          print(error)
          activeUser = ctx.message.author
          e = discord.Embed(
              title="Error",
              description="Command not found. Please try again. Use !help to view a list of valid commands.",
              color=discord.Color.red()
              )
          e.set_author(name=activeUser, icon_url=activeUser.avatar_url)
          msg = await ctx.send(embed=e)
          await asyncio.sleep(5)
          await msg.delete()

        # command to display all the available commands
        @self.command()
        async def help(ctx):
          e = discord.Embed(
              title="Commands",
              color=discord.Color.gold()
              )
#          e.add_field(
#              name="!searchAnime <search query> <# of results (1-10)>",
#              value="Use this command to search for an anime in our database. Specify the command, a search query, and the number (1-10) of results you want generated.",
#              inline=False
#          )
          e.add_field(
              name="!rateAnime <show name>",
              value="Use this command to add a show or update a show's rating. Specify the command and the show name to search in our database and your anime list to then add to your list or update. Once the bot has the show, it adds/updates a show's rating when you click on the numbered reactions (1-10).",
              inline=False
          )
          e.add_field(
              name="!showRatings",
              value="Use this command to view your ratings. Specify the command to view the name and rating for each show that you rated.",
              inline=False
          )
          e.add_field(
              name="!deleteRating <show name>",
              value="Use this command to delete a show from your anime list. Specify the command and the show name to search in your anime list and delete it.",
              inline=False
          )
          e.add_field(
              name="!getRec <# of recommendations (1-15)>",
              value="Use this command to get a specified number of recommendations from your anime list. Specify the command and the number (1-15) of results you want generated. ",
              inline=False
          )
          anime_url = "https://us.rule34.xxx//images/4608/1603d38255486b28981da501b0da5801.jpeg?5249040"
          e.set_author(name="Anime Recommender", icon_url=anime_url)
          await ctx.send(embed=e)

    async def on_ready(self):
        print('We have logged in as {0.user}'.format(self))


b = MyBot(command_prefix = "!", self_bot = False) # call the Discord bot
b.run(os.environ['TOKEN']) # run bot with bot token saved on os.environment
