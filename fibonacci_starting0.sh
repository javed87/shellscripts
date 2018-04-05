#!/bin/sh
read -p "Enter the number till which you want the fibonnacci series to be read generated:"$'\n' n
previousnum=0;
currentnum=1;
echo "OUTPUT:"
if [[ $n -eq 1 ]]
then
  echo $previousnum;
  exit
elif [ $n -ge 2 ]
then
        echo $previousnum;
        while [ $n -ge 2 ]
        do
                (( nextnum = currentnum + previousnum ))
                previousnum=$currentnum;
                currentnum=$nextnum;
                (( n=n-1))
                 echo $previousnum;
        done
else
 echo "Enter only positive integers"
fi
