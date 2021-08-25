#!/bin/bash
 
input_val=$1
output_val=()
for x in $input_val
do 
    echo "input value is $x"
    len=${#x}
    #echo $len
    array_len=$((len - 1))
    #echo $array_len
    for ((i=0;i<=${array_len};i++))
    do
        substr=${input_val:$i:1}
        #echo " val : $substr"
        if [[ $substr =~ [a-zA-Z] || $substr =~ "@" ]]
        then
            output_val+=$substr
        fi
    done
done
 
echo "output val is ${output_val}"
