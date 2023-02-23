#!/bin/bash

#this bash script is book address

  # You can View All the Book Address contact

    # you add New Record

       # you can search on exciting Record 


display=$(cat address-book.txt)
xcowsay "....WELCOME TO THE BOOK ADDRESS....."
echo "*********........Please Choose One of the Option Below........*******"
echo ".......For Display all thea Contact Please Press (1)......."
echo ".......For Add New Record Please press (2)........."
echo ".......For Address Book Searching Please Press (3)......."
read num
if [ $num == 1 ];
then
echo "The Contact Of This Address Book:"
echo "$display"
else 
if [ $num == 2 ]; then
echo "please Enter First Name:"
read firstname
echo "Please Enter Last Name:"
read lastname
echo "Please Enter Phone Number:"
read phonenumber
echo $firstname  $lastname  $phonenumber  >> address-book.txt
echo "you'r New Record is : $firstname $lastname $phonenumber"
else 
if [ $num == 3 ]; then
echo "Please Enter The Name You Would Like To Searching:"
read searching
sear=$(grep -i  "$searching" address-book.txt)
if [ -n "$sear" ]; then
echo "The Record Is Avaliable : $sear"
else
echo "No Reacord Found"
fi
fi
fi
fi
xcowsay "Thank For Using Our Book Address"
