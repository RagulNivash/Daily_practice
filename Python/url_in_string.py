import re
str= "welcom @1324$5%^&"
str1= "werfasdsd asdasd"
reg= re.compile('[!@#$%^&*()]')

if(reg.search(str1)==None):
    print("no special char")

else:
    print("Yes")