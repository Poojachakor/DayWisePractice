echo "Enter the number N: "
read N

echo "The prime factors of $N are: "
for((i=2; i*i<=N; i++))
do
  while [ $(($N % $i)) == 0 ]
  do
    echo $i
    N=$(($N / $i))
  done
done

if [ $N > 2 ]
then
  echo $N
fi

