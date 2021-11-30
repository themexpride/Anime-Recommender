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


class Search(commands.Bot):
  def __init__(self, command_prefix, self_bot):
    commands.Bot.__init__(self, command_prefix=command_prefix, self_bot=self_bot)
    self.message1 = "[INFO]: Bot now online"
    self.message2 = "Bot still online"
    self.add_commands()


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
        async def addOrUpdateAnime(ctx, *args):
            i = 0
            endMessage = 0
            count = 0
            e = discord.Embed(title = "Searching for your anime", description = "tick tock", color = discord.Color.green())
            msg = await ctx.send(embed=e)
            def check(reaction: discord.Reaction, u: Union[discord.Member, discord.User]):
                      return u.id == ctx.author.id and reaction.message.channel.id == ctx.channel.id and str(reaction.emoji) == '✔️'
            try:
                reaction, user = await self.wait_for(event = "reaction_add", timeout=5.0, check=check)
            except asyncio.TimeoutError:
                await msg.edit(e = discord.Embed(
                    title = "Your Search Results",
                    description = "Anime not found.",
                    color = discord.Color.red()
                    ))
            else:
                await msg.edit(embed = discord.Embed(title="Anime Recommender", description="Reacted", color=discord.Color.red()))
                await msg.remove_reaction('✔️', ctx.author)
            searchString = ''
            while(i == 0):
                try:
                  assert(len(args)>1)
                  count = int(args[-1])
                  assert(count > 0 and count < 11)
                  searchString = ' '.join(args[:-1])
                except:
                  activeUser = ctx.message.author
                  e = discord.Embed(
                    title = "Your Search Results",
                    description = "Anime not found.",
                    color = discord.Color.red()
                    )
                  e.set_author(name=activeUser, icon_url=activeUser.avatar_url)
                  msg = await ctx.send(embed=e)
                else:
                  back = backend.Backend()
                  result = back.getSearchResultsInNameFormatHelper(back.getSearchResultsInNames(searchString, count))
                  activeUser = ctx.message.author
                  msg.edit(e = discord.Embed(
                    title = "Your Search Results",
                    description = result,
                    color = discord.Color.blue()
                    ))
                  e.set_author(name=activeUser, icon_url=activeUser.avatar_url)
                  msg = await ctx.send(embed=e)
                  break
            }
            e = discord.Embed(
                title="Add/Update Anime",
                description="Please go fuck yourself",
                color=discord.Color.red())
            e.set_author(name=activeUser, icon_url=activeUser.avatar_url)
            msg = await ctx.send(embed=e)
            await msg.add_reaction('✔️')
            await msg.add_reaction('❌')
            #def check(reaction: discord.Reaction, u: Union[discord.Member, discord.User]):
            #          return u.id == ctx.author.id and reaction.message.channel.id == ctx.channel.id and str(reaction.emoji) == '✔️'
            #try:
            #    reaction, user = await self.wait_for(event = "reaction_add", timeout=60.0, check=check)
            #except asyncio.TimeoutError:
            #    await msg.delete()
            #else:
            #    await msg.edit(embed = discord.Embed(title="Anime Recommender", description="Reacted", color=discord.Color.red()))
            #    await msg.remove_reaction('✔️', ctx.author)

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
              name="!addOrUpdateAnime <show name>",
              value="Use this command to add a show or update a show's rating. Specify the command and the show name to search in our database and your anime list to then add to your list or update. Once the bot has the show, it adds/updates a show's rating when you click on the numbered reactions (1-10).",
              inline=False
          )
          e.add_field(
              name="!deleteAnime <show name>",
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
