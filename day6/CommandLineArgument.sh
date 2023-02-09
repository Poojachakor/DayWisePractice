while [ $result -le 256 ]
do
  if [ $i -le $n ]; then
    echo "2^$i = $result"
    i=$((i+1))
    result=$((result*2))
  else
    break
  fi
done


