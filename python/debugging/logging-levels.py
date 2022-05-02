import logging, os
os.chdir("D:\\Tutorial\\tf-files\\python\\debugging")
logging.basicConfig(filename="logging.txt",level=logging.DEBUG, format='%(asctime)s - %(levelname)s - %(message)s')
# logging.disable(logging.CRITICAL) #this will disable CRITICAL LEVEL DEBUG and below.
#debug levels
# logging.debug()
# logging.info()
# logging.warning()
# logging.error()
# logging.critical()

logging.debug("Start of Program")

def factorial(n):
    logging.debug("Startt of of factorial (%s)" %(n))
    total = 1
    for i in range(1,n + 1):
        total = total * i
        logging.debug('i is %s, total is %s' %(i, total))
    
    logging.debug("Return value is %s" %(total))
    return total


print(factorial(5))


logging.debug("End  of Program")