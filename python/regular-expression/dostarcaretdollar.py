from genericpath import exists
import re

beginsWithRegex = re.compile(r'^Hello') #^ will match the in the beginning, will return None if match is not at the beginning
endsWithRegex = re.compile(r'world!$') #$ will match in the beginning, will return None if match is not at the end
mo = endsWithRegex.search("hey Hello world! wide!")

searchallRegex = re.compile(r'^\d+$')
mo2 = searchallRegex.search("292929292929391032128481247912")
# print(mo2)

dotRegex = re.compile(r'.{1,2}at')
mo3 = dotRegex.findall("the cat in the hat sat on the flat mat because theres a rat who shat inside the hat")
# print(mo3)

dotstarRegex = re.compile(r'First Name: (.*) Last Name: (.*)') # (.*) will match all characters and group it and return a string of tuple.
mo4 = dotstarRegex.findall("First Name: Juan Last Name: Dela Cruz")
# print(mo4)
#(r'.*', re.DOTALL) will match all regardless of new line
#(r'[aeiou]', re.IGNORECASE) this will match uppercase and lowercase ignoring the CAPS
#

