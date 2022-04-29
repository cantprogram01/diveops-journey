import re

batRegex = re.compile(r'Bat(wo)*man') # ? will appear zero or one time, * will appear zero to unlimited times
mo = batRegex.search("The Adventures of Batwowowowowowowowowowowowowowowowoman")



phoneNumRegex = re.compile (r'(\d\d\d)?\d\d\d-\d\d\d') #\d means match a digit
mo1 = phoneNumRegex.search("call me 075 593-3919")
# print(mo1)


testRegex = re.compile(r'Bat(wo)+man') # + will appear one to many times
mo2 = testRegex.search("The adventures of Batman") #if (wo)+ doesn't appear then it will be None will be the output
#in this case + will return False only if it appears one to many times
mo3 = testRegex.search("The adventures of Batwowowoman")
# print(mo2 == None, mo2)
# print(mo3 == None, mo3)


testRegex2 = re.compile(r'(\+\*\?)+') # \ is used to escale symbols, to make sure it won't be interpreted as expression, \d \( \) \+ \* and \? are examples of it.
mo4 = testRegex2.search('these symbols +*?+*?+*?+*?+*?+*?  are really fine')

testRegex3 = re.compile(r'(ha){3}') # {x} will search for specific repeatition. {3} will search for Hahaha
mo5 = testRegex3.search("what the hell ha ha hahaha!!")
# print(mo5.group())

testRegex4 = re.compile(r'((\d\d\d-)?\d\d\d-\d\d\d\d(,)?){3,5}') #{x,y} is the minimum and maximum numbers of match result it will return #by default it's a greedy match meaning it will return
#the longest match it can return
mo6 = testRegex4.search("my numbers are 415-555-1234,555-4242,212-555-0000,666-2999")
# print(mo6.group())

testRegex5 = re.compile(r'(\d){3,5}?') # {x,y}? is non-greedy match
testRegex6= re.compile(r'(\d){3,5}')
mo7 = testRegex5.search('1234567')
mo8 = testRegex6.search('1234567')
print(mo7.group(),'non-greedy match')
print(mo8.group(),'greedy match')

# 
#