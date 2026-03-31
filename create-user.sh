#!/bin/bash

echo "Press 1 to Create User else press 0"
read user

#Loops runs while user enters 1
while [ $user -eq 1 ]
do
	echo "Enter the user name"
	read username

	#Create user
	sudo adduser "$username"

	echo "If you wish to continue creating users press 1 else 0"
	read user
done

echo "User creation process ended."
