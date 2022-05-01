import os
# folder = os.path.join('D:\\','Tutorial','tf-files','python','files','test.txt')

# . = current folder
# .. = parent folder
os.chdir('D:\\Tutorial\\tf-files\\python\\files\\') #switch to directory
print(os.getcwd()) #return the current working directory
print(os.path.abspath('test.txt')) #return the absolute path of the file, it's like converting relative path to absolute path.
print(os.path.relpath('D:\\Tutorial\\tf-files\\python\\files\\test.txt')) #opposite convertion of os.path.abspath()
print(os.path.isabs('test.txt')) #return true if path is absolute path
print(os.path.dirname('D:\\Tutorial\\tf-files\\python\\files\\')) #return directory name
print(os.path.basename('D:\\Tutorial\\tf-files\\python\\files\\test.txt')) #return the name of the last folder / file
print(os.path.exists('D:\\Tutorial\\tf-files\\python\\files\\test.txt')) #return true of path/file exist
print(os.path.isfile('D:\\Tutorial\\tf-files\\python\\files')) #return true if it's a file
print(os.path.isdir('D:\\Tutorial\\tf-files\\python\\files\\test.txt')) #return true of it's a folder
print(os.path.getsize('D:\\Tutorial\\tf-files\\python\\files\\test.txt')) #return the size of file, in bytes
print(os.listdir('D:\\Tutorial\\tf-files\\python\\files')) #return all files and folder inside 
print(os.makedirs('D:\\Tutorial\\tf-files\\python\\files\\test1\\test2')) #create a folder 