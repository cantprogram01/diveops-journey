myCat = {'size':'fat','color':'red','disposition':'lazy'}

print('size' not in myCat)


print(myCat.keys()) #will print dict_keys
print(myCat.values()) #will print dict_values
print(list(myCat.keys())) #will print dict_keys list like
print(list(myCat.values())) #will print dict_values list like
print(list(myCat.items())) #will print 2 item tuples combining keys and values

#listing all values/keys/items in a dictionary using loop
for a in myCat.keys(): #print all keys in a dictionary
    print(a)

for a in myCat.values(): #print all values in a dictionary
    print(a)

for a,b in myCat.items(): #print key and values in a dictionary
    print(a+':'+b)

for a in myCat.items(): #print all key and value and assign to 1 variable
    print(a)

myCat.setdefault("breed","persian")

print(myCat)