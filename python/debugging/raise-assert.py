import os
import traceback
try:
    raise Exception("This is a test error")
except:
    os.chdir("D:\\Tutorial\\tf-files\\python\\debugging")
    errorlog = open("error_log.txt", "a")
    errorlog.write(traceback.format_exc())
    errorlog.close()
    print("Error has been saved to:",errorlog.name)

def boxPrint(symbol, width, height):
    if len(symbol) != 1:
        raise Exception("symbol",'Only 1 Character is allowed')
    if width < 2 or height < 2:
        raise Exception("width and height","Should be >= 2")
    print(symbol * width)

    for i in range(height - 2):
        print(symbol + ('x' * (width -2)) + symbol)
    print(symbol * width)
