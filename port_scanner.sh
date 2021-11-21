#!/bin/bash

echo "Welcome to the port scanner, it will use netcat"
echo "If you don't have netcat press 1, if you have nc press enter"
read answer

if [[ $answer == 1 ]]
then

        echo "Installing netcat..."
        sudo apt-get install netcat
        clear
        echo "Netcat seems to be installed, if not use the command 'apt-get install netcat'"
else
        echo "Introduce the ip adress:"
        read ip
        sleep 1
        echo "Intruduce the port or the port range (ex. 22 / ex. 22-1000)"
        read port
        sleep 1
        nc -vz $ip $port
        sleep 2

fi
