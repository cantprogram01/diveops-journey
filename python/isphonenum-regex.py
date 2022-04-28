import re

message = 'the big brown fox 075-593-3919 jumps over the lazy dog 555-222-3333'

phoneNumRegex = re.compile (r'\d\d\d-\d\d\d-\d\d\d') #r is raw string, \d = look for digit
match = phoneNumRegex.findall(message)

print(match)