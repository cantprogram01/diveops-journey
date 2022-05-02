import random
# os.chdir("D:\\Tutorial\\tf-files\\python\\debugging")
# logging.basicConfig(level=logging.DEBUG, format='%(asctime)s - %(levelname)s - %(message)s')
heads = 0
for i in range(1, 1001):
    if random.randint(0, 1) == 1:
        # logging.debug('i is %s, total is %s' %(i, heads))
        heads = heads + 1
    if i == 500:
        print("half way now!")

print("heads result:", heads, "times")