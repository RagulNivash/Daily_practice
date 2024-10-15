# factorial=1
# num=5

# if num<0:
#     print("no factorial")

# elif num==0:
#     print("fac is 1")

# else: 
#     for i in range(1, num+1):
#         factorial= factorial*i
#     print("factor", num,"is", factorial)


def fac (n):
    if (num==0 or n==1):
        return 1
    else:
        return n* fac(n-1)
    
num=5
print("fact", fac(num))