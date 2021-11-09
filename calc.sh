#! /usr/bin/env bash
# Colors for formatting
R='\033[0;31m'
B='\033[0;34m'
Y='\033[1;33m'
G='\033[0;32m'
C='\033[0;36m'
P='\033[1;35m'
NC='\033[0m' # No Color

#Greeting
echo -e "${Y}Hello, Mathematician!${NC}"

while true
do
  # Input numbers
    echo ""
    echo -e "${NC}Input Numbers..."
    echo -n -e "${B}Enter first number: " ${C} 
    read NUM1
    echo -n -e "${B}Enter second number: " ${C} 
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