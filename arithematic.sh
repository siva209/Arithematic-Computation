#!/bin/bash -x
read -p "enter the number :" a
read -p "enter the number: " b
read -p "enter the number: " c
result1=$(($a+$(($b*$c))))
result2=$(($(($a*$b))+$c))
result3=$(($c+$(($a/$b))))
result4=$(($(($a%$b))+$c))
declare -A arr
j=1
for i in $result1 $result2 $result3 $result4
do
	arr[$j]=$i
	((j++))
done
echo ${arr[@]}
echo ${!arr[@]}
for ((i=0;i<=${#arr[@]};i++))
do
  a[$i]=${arr[$i]}
done
echo ${a[@]}

