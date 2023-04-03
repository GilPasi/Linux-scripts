#!/bin/bash

echo "Enter name"
read name
echo "Your name is : $name"

grep "unix" $1 | wc -l
