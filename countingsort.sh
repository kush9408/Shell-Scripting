#!/bin/bash
read -p "Enter the size of array: " size
i=0
declare -a arr     #declaring the array 
while [ $i -lt $size ]
do
read -p "element number $(($i+1)): " arr[i]
i=$[$i+1]
done
echo "Inputed array is:  ${arr[@]}"

max=0    

for el in ${arr[@]}
do
if [ $el -gt $max ]
then
max=$el
fi
done
echo "max element is : $max"

declare -a carr        # declaring the count array
i=0
while [ $i -lt 10 ]
do
carr[i]=0
i=$[$i+1]
done
echo "${carr[@]}"
i=0
while [ $i -lt $size ]
do
k=${arr[i]}
carr[k]=$((${carr[k]}+1)) # calculating the frequency of each element
i=$[$i+1]
done
echo "${carr[@]}"

i=0

while [ $i -le $max ] 
do
j=1
while [ $j -le ${carr[i]} ]
do 
echo " $i "
j=$[$j+1]
done
i=$[$i+1]
done


















