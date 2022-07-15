#!/bin/bash

#Enter any string with or without spaces to check if the given string is Palindrome or not

echo "===================="
echo "  PLAINDROM CHECK"
echo "===================="

read -p "Enter the string: "  WORD
echo "String is $WORD"

#echo ${#WORD}

LEN=${#WORD}
echo "LENGTH OF STRING: $LEN"

NOSPACE=${WORD// /}
#echo "$NOSPACE"
REV=$(echo $NOSPACE | rev)

#for(( c=1; c<=($LEN)/2; c++))

if [ "$NOSPACE" =  "$REV" ];
    then
            echo "GIVEN WORD-- $WORD -- IS A PALINDROME"
    else
fi

