low=1
high=100

while true; do
  mid=$(( (low + high) / 2 ))
  echo "Is your number less than or equal to $mid?"
  read response
  if [ "$response" == "yes" ]; then
    high=$(( mid ))
  elif [ "$response" == "no" ]; then
    low=$(( mid + 1 ))
  else
    echo "Invalid response, please enter 'yes' or 'no'"
    continue
  fi
if [ $low -eq $high ]; then
    echo "The magic number is $low"
    break
  fi
done

