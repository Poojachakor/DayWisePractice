declare -a birthMonths
for ((i=0; i<50; i++)); do
  birthMonths[i]=$(((RANDOM % 12) + 1))
done


declare -A monthCount
for month in "${birthMonths[@]}"; do
  if [[ -z "${monthCount[$month]}" ]]; then
    monthCount[$month]=1
  else
    monthCount[$month]=$((${monthCount[$month]} + 1))
  fi
done


for month in "${!monthCount[@]}"; do
  echo "Month $month: ${monthCount[$month]} individuals"
done

