import shelve, os

os.chdir('D:\\Tutorial\\tf-files\\python\\files\\')
print("Current Working Directory:",os.getcwd())
shelveFile = shelve.open('shelve') #this is to write a list/dictionary key:value as binary file 
print("Currently Editting:", shelveFile)
shelveFile['cats'] = ['Zophie','Pooka','Simon','Fat-Tail','Cleo']
print(list(shelveFile.keys()))
print(list(shelveFile.values()))

shelveFile.close()

