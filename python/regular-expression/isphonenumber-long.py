
def isPhoneNumber(phonenum):
    if len(phonenum) != 12:
        return False
    for i in range(0,2):
        if not phonenum[i].isdecimal():
            return False
    if phonenum[3] != '-':
        return False
    for i in range(4,6):
        if not phonenum[i].isdecimal():
            return False
    if phonenum[7] != '-':
        return False
    for i in range(8,11):
        if not phonenum[i].isdecimal():
            return False
        return True

message = input("INPUT ANY TEXT WITH NUMBER: ")
foundNumber = False
for i in range(len(message)):
    chunk = message[i:i+12] #starting from i up to i+12
    if isPhoneNumber(chunk):
        print('Phone number found: '+chunk)
        foundNumber = True
if not foundNumber:
    print('Could not find any phone number')