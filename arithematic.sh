#!/bin/bash -x
read -p "enter the number :" a
read -p "enter the number: " b
read -p "enter the number: " c
result1=$(($a+$(($b*$c))))
result2=$(($(($a*$b))+$c))
result3=$(($c+$(($a/$b))))
result4=$(($(($a%$b))+$c))
declare -A arr
arr[1]=$result1
arr[2]=$result2
arr[3]=$result3
arr[4]=$result4
echo ${arr[@]}
echo ${!arr[@]}
for ((i=1;i<${#arr[@]};i++))
do
  a[$i]=${arr[$i]}
done
echo ${a[@]}
echo ${!a[@]}
temp=0
for ((i=0;i<=${#a[@]};i++))
do
	for (( j=0;j<=$((${#a[@]}-$i));j++))
	do
         echo ${a[j]}
         echo ${a[j+1]}
		if [[ ${a[$j]} < ${a[$(($j+1))]} ]]
		then
			temp=${a[$j]}
			a[$j]=${a[$(($j+1))]}
			a[$(($j+1))]=$temp
		fi
	done
done
echo ${a[@]}
