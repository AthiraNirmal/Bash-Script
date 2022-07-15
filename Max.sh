#!/bin/bash

#To find the Maximum Element of an array


#FUnction 1
MaximumNum(){

        MAX=0
        ARR=("$@")

        for i in "${ARR[@]}";
        do

                if [ "$i" -gt "$MAX" ]
                then
                        MAX=$i
                        #echo $i
                        #echo "hello MAX updated"
                        #echo $MAX
                fi

        done
        echo "Maximum is:"  $MAX

}

#Read & Store Numbers into Array
read -p "Enter Array Size: "  LEN
echo "Enter $LEN numbers--"

for(( c=0; c<$LEN; c++))
do
    read  NUM
    ARRAY[c]=$NUM
done

#To print the complete Array:
#echo ${ARRAY[*]}

MaximumNum "${ARRAY[@]}"



