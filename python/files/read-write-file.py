import os

os.chdir('D:\\Tutorial\\tf-files\\python\\files\\')
print("Current Working Directory:",os.getcwd())
myfile = open('test.txt','a') # you can pass below the 2nd argument
print("Currently Editting:", myfile.name)
# Character	Meaning
# 'r'	open for reading (default)
# 'w'	open for writing, truncating the file first
# 'x'	create a new file and open it for writing
# 'a'	open for writing, appending to the end of the file if it exists
# 'b'	binary mode
# 't'	text mode (default)
# '+'	open a disk file for updating (reading and writing)
# 'U'	universal newline mode (deprecated)

myfile.write("\ni'm trying to append something in this file") #write inside the file

# readfile = myfile.read() #read all lines
# readlines = myfile.readlines() #return an array of text per newline
# print(readlines)
myfile.close()