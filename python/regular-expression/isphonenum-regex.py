import re

message = 'battery'

phoneNumRegex = re.compile (r'\(\d\d\d\) \d\d\d-\d\d\d') #r is raw string, \d = look for digit
# (\d\d\d) will group it and can be a separatte output using .group(index)
match = phoneNumRegex.findall(message)

batRegex = re.compile (r'bat(man|uta|mobile|tery|nang)')
batmatch = batRegex.search(message)

print(batmatch)