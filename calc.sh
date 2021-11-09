#! /usr/bin/env bash
# Colors for formatting
R='\033[0;31m'
B='\033[0;34m'
Y='\033[1;33m'
G='\033[0;32m'

#Greeting
echo "Hello, Mathematician!"

while true
do
  # Input numbers
    echo ""
    echo -e "Input Numbers..."
    echo -n "Enter first number: "
    read NUM1
    echo -n "Enter second number: "
    read NUM2

  # Input type of operation
    echo ""
    echo "Enter number of choice:"
    echo "1 - Addition"
    echo "2 - Subtraction"
    echo "3 - Exit"
    echo -n "Choice: "
    read OP

  # Case Statement for menu and operation
    case $OP in
      1)
        let "SUM= $NUM1 + $NUM2"
        echo "Result:" $NUM1 "+" $NUM2 "=" $SUM
        ;;
      2)
        let "DIFF= $NUM1 + $NUM2"
        echo "Result:" $NUM1 "-" $NUM2 "=" $DIFF
        ;; 
      3)
        echo "Thank you for using my amazing calculator!"
        break
        ;;
      *)
        echo "Invalid input. Please try again."
        ;;
    esac

  done