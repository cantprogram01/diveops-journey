import os
#os.walk() #will walk through all the directory/files/subfolders target path
for folderName, subFolders, filenames in os.walk('D:\\Tutorial\\tf-files\\python\\files\\recyclebin'):
    print("Folder is:",folderName)
    print("Folders Inside:",folderName, "are: ",subFolders)
    print("Files Inside: ",folderName, "are:",filenames)
    print()