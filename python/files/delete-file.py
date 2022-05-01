import os
import shutil, os, send2trash


os.chdir('D:\\Tutorial\\tf-files\\python\\files')
print(os.getcwd())
# todelete = open('recyclebin', 'r')
# print("Deleting:", todelete.name)
# todelete.close()
# shutil.rmtree('recyclebin') #remove regardless if empty or not
#os.rmdir('folder') #remove an empty folder
#os.unlink(filename) #delete a file
#NOTE: Careful with the delete of the files as it may affect your files and folders, you can DryRun your file first by using print() for testing and comment the actual delete of file.
#NOTE: using the rmdir/rmtree/unlink will permanently delete the target file/folder, you may use send2trash to have a lastresort backup of your files
send2trash.send2trash('junk.txt') # will delete the file and move to $RECYCLEBIN diff location per OS.