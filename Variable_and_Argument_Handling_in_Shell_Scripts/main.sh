#!/bin/bash

var="Hello world"
echo "The value of this variable is: $var"

echo "Enter your name: "
read name
echo "Hello $name Welcome to the world"

echo "passed following arguments: $1 $2"

if [ $# -ge 2 ]; then
    echo "the second argument is: $2"
else
    echo "you didn't no pass second arguments"
fi

echo "total number of argument is passed $@"