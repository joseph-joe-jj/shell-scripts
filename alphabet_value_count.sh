#!/bin/bash

printf "enter the word :"
read user_input

readarray user_input_in_array < <(echo "$user_input")
base=0

for alphabet in {a..z}
do
    actual_alphabet=$alphabet
    alphabet_value=$(( ${base} + 1 ))
    eval $actual_alphabet=$alphabet_value
    base=$alphabet
    echo "the alphabet is : $actual_alphabet and value is $alphabet_value"
done

user_input_length=$(( ${#user_input} - 1 ))
echo "user_input : $user_input & user input length : $(($user_input_length + 1))"
echo


for ((i=0;i<=${user_input_length};i++))
do
    echo "substring : ${user_input_in_array:$i:1}"
    substr=${user_input_in_array:$i:1}
    for x in {a..z}
    do
        if [ "$substr" == "$x" ]
        then
            # tempvar=$x
            temp=`echo "$"`
            tempvar=`echo "${temp}${x}"`
            tempval=`eval echo "${tempvar}"`
            echo $tempval
            total_val=$((total_val + tempval))
        fi
    done

done

echo "the sum of total substring value value : $total_val"
