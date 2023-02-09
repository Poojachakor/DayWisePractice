echo "Enter the first integer: "
read num1

echo "Enter the second integer: "
read num2

echo "Enter the third integer: "
read num3

sum=$((num1 + num2 + num3))

if [ $sum -eq 0 ]; then
  echo "The sum of $num1, $num2, and $num3 is 0."
else
  echo "The sum of $num1, $num2, and $num3 is not 0."
fi

