#!/bin/bash -x
read -p "enter the number :" a
read -p "enter the number: " b
read -p "enter the number: " c
result1=$(($a+$(($b*$c))))
result2=$(($c+$(($a/$b))))
