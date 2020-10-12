#!/bin/bash -x
read -p "enter the number :" a
read -p "enter the number: " b
read -p "enter the number: " c
result1=$(($a+$(($b*$c))))
result2=$(($(($a*$b))+$c))
result3=$(($c+$(($a/$b))))
reslut4=$(($(($a%$b))+$c))
