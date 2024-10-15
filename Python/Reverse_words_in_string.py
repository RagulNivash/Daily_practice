str="welcome to python programming"

words=str.split(" ")
print(words)

woods=words[-1::-1]
print(woods)

final= '$'.join(woods)

print(final)