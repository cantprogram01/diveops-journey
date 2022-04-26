a = 'AAA'
b = 'BBB'

print("Before swapping variables","a="+a,"b="+b)

a, b = b, a

print("After swapping variables","a="+a,"b="+b)


a, b, = b, a

print("Swap back variable","a="+a,"b="+b)