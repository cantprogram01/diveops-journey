# def d(num):
#     try:
#         divide = 42 / num
#         print(divide)
#     except ZeroDivisionError:
#         print("0")
    

# d(10)
# d(20)
# d(0)

cats = input("How many cats do you have? ")
try:
    if int(cats) >= 4:
        print("That's alot of cats")
    elif int(cats) < 1:
        print("No cats? ")
    else:
        print("That's not alot")
except:
    print("Enter a number only")
