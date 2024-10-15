mylist=[12,32,43,54,13]
mylist.sort()
print(mylist)

print(mylist[(len(mylist))-2])

print(mylist[-2])


new_list=set(mylist)
new_list.remove(max(new_list))
print(max(new_list))

print(new_list)