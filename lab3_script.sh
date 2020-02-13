#!/bin/bash
# Authors : Sean Masucci
# Date: 1/1/2019

#Problem 1 Code:
#Make sure to document how you are solving each problem!
echo "Please enter a file name: "
read fileName
echo "Enter regex command: "
read regexC
egrep -c $regexC $fileName
echo "Number of phone numbers:"
egrep -c ^[0-9]{3}\-[0-9]{3}\-[0-9]{4}$ "regex_practice.txt"
#Description:
#for this promblem you are just looking for phone numbers in the format xxx-xxx-xxxx

#problem 2 code:
echo "Number of emails:"
egrep -c "@" "regex_practice.txt"
#all the emails have a @ in them.

echo "All phone numbers with the 303 area code:"
egrep -o ^"303"\-[0-9]{3}\-[0-9]{4}$ "regex_practice.txt"
#the 303 area code is always at the start of a phone number.

echo "printing all geocities.com emails to text file."
egrep "geocities.com"$ "regex_practice.txt" >> "email_results.txt"
