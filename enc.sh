#!/bin/bash

file=$1
echo -n Password: 
read -s password
echo

echo $file
openssl enc -aes-256-cbc -in ${file} -out "${file%.*}.enc" -k $password
