#!/bin/bash

menu(){
	
    echo "*******************************************"
	echo "*	MAIN - MENU                            *"
	echo "* 1. Number of users currently logged in  *"
	echo "* 2. Users - Using cat                    *"
	echo "* 3. Users - awk command                  *"
	echo "* 4. Users with bash shell                *"
	echo "* 5. Exit                                 *"
    echo "*******************************************"
	echo "Please enter option [1 - 5]:"  
}

option=y

while [ "$option" != "5" ]
do
	menu
	read option
	case $option in
		1) who | wc -l;;
		2) cat /etc/passwd;;
		3) awk -F: '{ print $1}' /etc/passwd;
		4) ps aux | grep bash | grep -v grep | cut -d " " -f 1 | sort | uniq;;
		5) break;; # exit
		*) echo "Wrong option";; # * means anything else
esac

read -p "Press [enter] key to continue..." # waits for the user to press [enter] to continue
clear

done

clear