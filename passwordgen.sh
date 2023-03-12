#!/bin/bash
# Simple Password Generator - Jared Langford - Inspired by Hackersploit on YT

echo "  _____                                    _    _____ ______ _   _ ";
echo " |  __ \                                  | |  / ____|  ____| \ | |";
echo " | |__) |_ _ ___ _____      _____  _ __ __| | | |  __| |__  |  \| |";
echo " |  ___/ _\` / __/ __\ \ /\ / / _ \| '__/ _\` | | | |_ |  __| | . \` |";
echo " | |  | (_| \__ \__ \\ V  V / (_) | | | (_| | | |__| | |____| |\  |";
echo " |_|   \__,_|___/___/ \_/\_/ \___/|_|  \__,_|  \_____|______|_| \_|";
echo "                                                                   ";
echo "                                                                   ";
echo "Made by JL"
echo "Inspired by Hackersploit on YT"
echo " "
#Ask the user for base64 or hex 
echo "Would you like to encode the passwords with Hexadecimals or Base64?"
echo "1: HEX"
echo "2: BASE64"
read OPTION
#Ask the user for the length of the password
echo "Please enter the length of the password"
echo "Max Length is 48!"
read PASS_LENGTH
#Ask how many passwords they need and store in NUM_TIMES
echo "How many passwords do you need?: "
read NUM_TIMES

#Use the for loop to loop through NUM_TIMES to create multiple passwords
#Seq is a CLI command that gens nums starting from 1 to the end point given by the user
for p in $(seq $NUM_TIMES); do
	#openssl rand -base64 48 | cut -c1-$PASS_LENGTH
	if [ $OPTION = 1 ]
	then
		openssl rand -hex 48 | cut -c1-$PASS_LENGTH
	elif [ $OPTION = 2 ]
	then
		openssl rand -base64 48 | cut -c1-$PASS_LENGTH
	fi
done


