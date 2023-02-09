read -p "enter first number: " number1;
read -p "enter second number: " number2;
read -p "enter third number:" number3;
read -p "enter fourth number:" number4;
read -p "enter fifth number:" number5;
sum=$(($number1+$number2+$number3+$number4+$number5));
echo "addition is: $sum"
average=$(($sum%5))
echo "Average is: $average"



