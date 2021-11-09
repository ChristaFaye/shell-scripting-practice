# Input numbers
  echo ""
  echo -e "Input Numbers..."
  echo -n "Enter first number: "
  read NUM1
  echo -n "Enter second number: "
  read NUM2

# Input type of operation
  echo "Enter number of choice:"
  echo "1 - Addition"
  echo "2 - Subtraction"
  echo "3 - Exit"
  echo -n "Choice: "
  read OP

  case $OP in
    1)
      SUM=expr $NUM1 + $NUM2
      echo "Result:" $NUM1 "+" $NUM2 "=" $SUM
      ;;
    2)
      DIFF=expr $NUM1 + $NUM2
      echo "Result:" $NUM1 "-" $NUM2 "=" $DIFF
      ;; 
    3)
      echo "$Thank you for using my amazing calculator!"
      break
      ;;
    *)
      echo "$Invalid input. Please try again."
      ;;
  esac