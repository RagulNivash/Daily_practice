import re

str="adsd dasdas asdeas asda"
sub_str= "asda"

# print(str.rfind(sub_str))


match=re.search(rf"\b{sub_str}\b",str)

print(match)

if match:
    print(match.start())
else:
    print("No whole word match found")