#!/bin/bash -x
read -p "enter the number :" a
read -p "enter the number: " b
read -p "enter the number: " c
result1=$(($a+$(($b*$c))))
result2=$(($(($a*$b))+$c))
result3=$(($c+$(($a/$b))))
result4=$(($(($a%$b))+$c))
declare -A arr
arr[0]=$result1
arr[1]=$result2
arr[2]=$result3
arr[3]=$result4
echo ${arr[@]}
echo ${!arr[@]}
for ((i=0;i<${#arr[@]};i++))
do
  a[$i]=${arr[$i]}
done
echo  ${a[@]}
echo "it is index ${!a[@]}"
temp=0
echo "leng ${#a[@]}"
for ((i=0;i<${#a[@]};i++))
do
	for (( j=$(($i+1));j<${#a[@]};j++))
	do
		if [ ${a[i]} -lt ${a[j]} ]
		then
			temp=${a[i]}
			a[i]=${a[j]}
			a[j]=$temp
		fi
	done
done
echo ${a[@]}
echo ${!a[@]}
j=0
for ((i=$((${#a[@]}-1));i>=0;i--))
do
	arr[$j]=${a[$i]}
	((j++))
done
echo ${arr[@]}
