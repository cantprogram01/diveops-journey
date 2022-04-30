import re

namesRegex = re.compile(r'Agent (\w)(\w+)')
mo = namesRegex.sub(r"Agent \1","Agent One gave the secret code to Agent Two") #sub() will find and replace the matched result for specific word
#\1 will point to group1 (\w) group2 is (\w+)
# print(mo)



#verbose pattern matching, it will ignore new lines for pattern matching

phoneNumRegex = re.compile (r'''
\d\d\d #area code
-
\d\d\d #first 3 digits
-
\d\d\d\d #last 4 digits
''', re.VERBOSE)
mo2 = phoneNumRegex.findall("My number is 075-593-3919 and 075-543-3210")
print(mo2)

#use multiple arguments use  | bitwise OR operator
# (r'',re.VERBOSE | re.DOTALL)