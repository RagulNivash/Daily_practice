a= input("Enter a string ")

print(a[:])
print(a[-1::-1])


b= (a[-1::-1])

if (a==b):
    print("palindrome")
else:
    print("No")