echo "Enter the upper limit of the range: "
read upper_limit

for (( i=$lower_limit; i<=$upper_limit; i++ )); do
  is_prime $i
  if [ $? -eq 0 ]; then
    echo $i
  fi
done
