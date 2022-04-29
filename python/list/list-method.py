supply = ['pen','pineapple','apple','chips','spam','bacon','egg']

print(supply.index('apple'))
# new_supply = ['tea','yogart']

supply.insert(0,'chicken') #add value anywhere on the list
supply.append('curry') #add value at the end of the list
print(supply)

supply.remove('chicken') #this remove method will allow us to specify a value
print(supply)
del supply[0] #this delete method will allow us to specify an index value 
print(supply)

#supply = supply.append/insert('dog') # you cannot do this since it will only assign a None value, since this variable is modified 'inplace'. #topic mutable and immutable datatypes


print(supply)

spam = ['a','Z','B','z','A']
spam.sort()
print(spam) #default sorting is ASCII-betical, meaning Uppercase Z will go first before lower case a and b
spam.sort(key=str.lower) #this is the true sort list, that will ignore the Uppercase rule for ASCII-betical order. a first before Z.
print(spam)