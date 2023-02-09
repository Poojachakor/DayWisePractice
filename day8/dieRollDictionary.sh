declare -A die_rolls

while [ true ]; do
  roll=$((RANDOM % 6 + 1))
  die_rolls[$roll]=$((${die_rolls[$roll]} + 1))

  if [ ${die_rolls[$roll]} -eq 10 ]; then
    break
  fi
done

max_value=0
max_key=0
min_value=10
min_key=0

for key in "${!die_rolls[@]}"; do
  value=${die_rolls[$key]}
if [ $value -gt $max_value ]; then
    max_value=$value
    max_key=$key
  fi
  if [ $value -lt $min_value ]; then
    min_value=$value
    min_key=$key
  fi
done

echo "The number that appeared the most is $max_key ($max_value times)"
echo "The number that appeared the least is $min_key ($min_value times)"


