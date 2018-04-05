#!/bin/sh
previousnum=0;
read -p "Enter the number till which you want the fibonnacci series to be read generated:"$'\n' n
currentnum=1;
echo "OUTPUT:"
if [[ $n -eq 1 ]]
then
  echo $currentnum;
  exit
elif [ $n -ge 2 ]
then
        echo $currentnum;
        while [ $n -ge 2 ]
        do
                (( nextnum = currentnum + previousnum ))
                previousnum=$currentnum;
                currentnum=$nextnum;
                (( n=n-1))
                 echo $currentnum;
        done
else
 echo "Enter only positive integers"
fi
