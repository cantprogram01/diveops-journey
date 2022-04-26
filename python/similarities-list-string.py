#String value are immutable objects, meaning you cannot change it

spam = 42
cheese = spam
spam = 100
print(spam, cheese)


name = 'Juan Dela Cruz'
newName = name[:5] + "" + name[10:]

print(newName)
print(name)



#Always remember that list jst copies a reference
mylist = [1,2,3,4,5]
mynewlist = mylist
mynewlist[1] = 'what?'
print(mynewlist)
print(mylist)
