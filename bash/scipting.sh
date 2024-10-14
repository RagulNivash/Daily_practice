#!/bin/bash

# STRING "mass"
# echo "Ragul is $STRING"


#echo "I am gethu $1 "

#echo $(whoami)

# echo "what is your name"
# read name

# if [$name];then
#   echo "gethu"

# else
#  echo"no name"
# fi
 
ifconfig |grep broadcast | awk '{print $2}'

alias ipadress="ifcongif ! grep broadcast | awk '{print $2}'"

alias ipadress="echo$(ifcongif ! grep broadcast | awk '{print $2}')"


##################################

if [${1,,}= herbert]; then
 echo "Oh, you"
elif [${1,,,}=help]; then
 echo "Just"
 else echo " I do"
 fi
 ##################################

case ${1,,,} in 
 herbert | administrator)
   echo " you"
   ;;
 help)
  echo "Jusyt"
 ;;
 *)
   echo " I do"
esac

###########################################

showuptime(){
   up=$(uptime -p | cut -c4-)
   since=$(uptime -s)
   cat << EOF

   ------------------------------------------
THis
-----------------------------------
EOF
}

  



}





















 
 
