from re import A


supply = ['pen','pineapple','apple','chips','spam','bacon','egg']
for element in supply:
    print(element)

total = 0
for element in range(1, 101):
    total = total + element
print(total)

a = 0
for x in range(1,8):
    if x % 3 == 0:
        print(x)
        a = a + x
print(a)