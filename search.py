import csv

#input anime you want to search
anime = input('Enter anime to find:\n').upper()

#read csv, and split on "," the line
csv_file = csv.reader(open('anime.csv', "r"), delimiter=",")

flag = 0
print("Search Results:")
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