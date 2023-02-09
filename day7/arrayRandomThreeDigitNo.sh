for i in {1..10}; do
  arr[i]=$((RANDOM%900+100))
done


declare -a arr


largest=0
smallest=999
for i in "${arr[@]}"; do
  if [ $i -gt $largest ]; then
    second_largest=$largest
    largest=$i
  elif [ $i -gt $second_largest ] && [ $i -ne $largest ]; then
    second_largest=$i
  fi
  if [ $i -lt $smallest ]; then
    second_smallest=$smallest
smallest=$i
  elif [ $i -lt $second_smallest ] && [ $i -ne $smallest ]; then
    second_smallest=$i
  fi
done


echo "The 2nd largest number is: $second_largest"
echo "The 2nd smallest number is: $second_smallest"

