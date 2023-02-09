balance=100
bet=1
wins=0
bets=0
goal=200


while [[ $balance -gt 0 && $balance -lt $goal ]]; do

  ((balance -= bet))
  ((bets++))


  if [[ $((RANDOM % 2)) -eq 1 ]]; then

    ((balance += bet * 2))
    ((wins++))
  fi
done
echo "Number of bets made: $bets"
echo "Number of wins: $wins"
echo "Ending balance: $balance"

