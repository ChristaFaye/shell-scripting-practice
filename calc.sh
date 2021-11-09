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
    echo -e "${NC}Input numbers..."
    echo -n -e "${B}Enter first number: " ${NC} 
    read NUM1
    echo -n -e "${B}Enter second number: " ${NC} 
    read NUM2

  # Input type of operation
    echo ""
    echo -e "${NC}Enter number of choice:"
    echo "1 - Addition"
    echo "2 - Subtraction"
    echo "3 - Exit"
    echo -n -e "${C}Choice: " ${NC} 
    read OP

  # Case Statement for menu and operation
    case $OP in
      1)
        let "SUM= $NUM1 + $NUM2"
        echo -e "${G}Result:" $NUM1 "+" $NUM2 "=" $SUM ${NC}
        ;;
      2)
        let "DIFF= $NUM1 - $NUM2"
        echo -e "${G}Result:" $NUM1 "-" $NUM2 "=" $DIFF ${NC}
        ;; 
      3)
        echo -e "${P}Thank you for using the amazing calculator!"
        break
        ;;
      *)
        echo -e "${R}Invalid input. Please try again."
        ;;
    esac
done