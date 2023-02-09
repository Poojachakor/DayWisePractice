check_palindrome() {
  num1=$1
  num2=$2

  if [ $(echo $num1 | rev) == $num1 ] && [ $(echo $num2 | rev) == $num2 ]; then
    echo "Both numbers are palindromes"
  elif [ $(echo $num1 | rev) == $num1 ]; then
    echo "Number 1 is a palindrome"
  elif [ $(echo $num2 | rev) == $num2 ]; then
    echo "Number 2 is a palindrome"
  else
    echo "Neither number is a palindrome"
  fi
}

