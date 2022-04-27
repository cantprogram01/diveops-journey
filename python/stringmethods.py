test = "the big brown fox jumps over the lazy dog"
newlist = test.split()

print(':'.join(newlist))
print("right".rjust(20,'-'))
print("left".ljust(20,'-'))
print("center".center(20,'-'))

text2 = "strip".rjust(20)
text3 = text2.strip()
print(text3)

text4 = "    x     ".strip()
print(text4)

text5 = "    x     ".lstrip()
print(text5)

text6 = "    x     ".rstrip()
print(text6)

text7 = 'zzxxyybananaxxyyqqq'.strip('zxyq')
print(text7)

text8 = 'hello world'.replace('o','fck')
print(text8)
# print(test.upper())
# print(test.lower())

# text1 = "ABC"
# #check if value is uppercase only
# print(text1.isupper(),text1)
    
# text2 = "abc"
# #check if value is lowercase only
# print(text2.islower(),text2)
 
# text3 = "abcABC"
# #check value if letters only
# print(text3.isalpha(),text3)

# text4 = "abc123"
# #check value if letters and numbers only
# print(text4.isalnum(),text4)

# text5 = "1"
# #check value if numbers only (int in quotes)
# print(text5.isdecimal(),text5)

# text6 = " "
# #check value if numbers only (int in quotes)
# print(text6.isspace(),text6)

# text7 = "Title"
# #check value if numbers only (int in quotes)
# print(text7.istitle(),text7)

# text8 = "this my book"
# print(text8.title())