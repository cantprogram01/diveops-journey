from itertools import count


message = input("Enter any text ")
count = {}

for i in message.upper():
    count.setdefault(i, 0)
    count[i] = count[i] + 1

print(count)