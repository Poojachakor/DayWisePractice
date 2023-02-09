heads_count=0
tails_count=0

while [[ $heads_count -lt 11 ]] && [[ $tails_count -lt 11 ]]; do
  flip=$((RANDOM % 2))

  if [[ $flip -eq 0 ]]; then
    echo "Heads"
    heads_count=$((heads_count + 1))
  else
    echo "Tails"
    tails_count=$((tails_count + 1))
  fi
done

echo "Heads count: $heads_count"
echo "Tails count: $tails_count"

