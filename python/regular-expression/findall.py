import re

phoneReg = re.compile(r'\d\d\d-\d\d\d-\d\d\d\d')
mo = phoneReg.findall("My numbers are 075-593-3919 and 696-696-6969")

# print(mo)

lyrics = '12 drummers drumming, 11 pipers piping, 10 lorsd a leaping, 9 ladies dancing, 8 maids a milking, 7 swans a swimming, 6 geese a laying, 5 golden rings, 4 calling birds, 3 french hence, 2 turtle doves, and 1 partridge in a pear tree'

lyricsRegex = re.compile(r'\d+ \w+')
mo2 = lyricsRegex.findall(lyrics)

# print(mo2)

test = 'robotcop eats baby food'
customRegex = re.compile(r'[^aeiou]') #[] this is a custom own match character classes, you can put whatever character symbol or number you want to match.
# ^ (caret) will do the opposite, and find all inside [] and not match in your return
mo3 = customRegex.findall(test)


print(mo3)