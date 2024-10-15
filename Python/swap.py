arr= [1,2,3,4,5]

# first= arr[0]

# size=len(arr)
# last= arr[size-1]

# first,last=last,first

# arr[0]=first
# arr[size-1]=last

# print(arr)





# arr[0],arr[-1]=arr[-1],arr[0]
# print(arr)


first=arr.pop(0)
last=arr.pop(-1)
arr.insert(0, last)
arr.append(first) 

print(arr)