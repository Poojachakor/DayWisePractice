echo "Enter a number: "
read number

declare -a factors

i=2
while [ $i -le $number ]
do
  while [ $(($number % $i)) == 0 ]
  do
    factors+=($i)
    number=$(($number / $i))
  done
  i=$(($i + 1))
done

echo "Prime factors of the given number are: ${factors[@]}"

