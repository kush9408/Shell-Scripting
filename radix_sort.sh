#!/bin/bash
read -p "Enter the array size you want: " size
i=0
declare -a arrayname             # used to declare an array
while [ $i -lt $size ]
do
read -p "Enter the $(($i+1)) element of array: " arrayname[i]
i=$[$i+1 ]
done

echo "Inputed array is : ${arrayname[@]} " 

max=0
for el in ${arrayname[@]}
do
if [ $el -gt $max ]
then
max=$el
fi
done
echo "Max element is : $max"

declare -a oarr   # declaring output array
declare -a carr   # declaring count array
exp=1
z=1
while [ $(($max/$exp)) -gt 0 ]         # -gt for greater than and -ge for greater than or equal to
do
echo "Iteration number ${z} with exp value ${exp}"
i=0
while [ $i -lt 10 ]
do
carr[i]=0
i=$[$i+1]
done

i=0                     # calculating the frequency of each number
while [ $i -lt $size ]
do
k=$(((${arrayname[i]}/$exp)%10))
carr[k]=$[${carr[k]}+1]
i=$[$i+1]
done

i=1
while [ $i -lt 10 ]
do
k=$[$i-1]
carr[i]=$((${carr[i]}+${carr[k]}))
i=$[$i+1]
done

i=$[$size-1]
while [ $i -ge 0 ]
do
k=$(((${arrayname[i]}/$exp)%10))
oarr[$((${carr[k]}-1))]=${arrayname[i]}
carr[k]=$((${carr[k]}-1))
i=$[$i-1]
done

echo "Printing the sorted array after this iteration"
echo ${oarr[@]}
z=$[$z+1]
exp=$[$exp*10]
done

echo "final sorted list"
echo ${oarr[@]}










