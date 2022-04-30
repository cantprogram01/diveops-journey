#! python3

import re, pyperclip

#Create regex for phone numbers

phoneRegex = re.compile(r'''
#
(((\d\d\d)|(\(\d\d\d\)))? #area code (optional)
(\s|-)   # first separator
\d\d\d    # first 3 digits
-    # second separator
\d\d\d\d # last 4 digits
((ext(\.)?\s|x)(\d{2,5}))?) # extension number-part
''', re.VERBOSE)

#Get text off the clipboard
text = pyperclip.paste()

#Extract the email/phone from this text
emailRegex = re.compile(r'''

[a-zA-Z0-9_.+]+       #name part
@                      #@ symbol
[a-zA-Z0-9_.+]+        #domain name part #.com section

''', re.VERBOSE)

#TODO: Create regex for email addresses
extractedPhone = phoneRegex.findall(text)
extractedEmail = emailRegex.findall(text)

allphoneNumber = []
for phoneNumber in extractedPhone:
    allphoneNumber.append(phoneNumber[0])
    


#TODO: 

result = '\n'.join(allphoneNumber)+ '\n' +'\n'.join(extractedEmail)
# print(result)
pyperclip.copy(result)