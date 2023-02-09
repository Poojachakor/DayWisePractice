n=$1
sum=0
for ((i=1; i<=n; i++))
do
  sum=$(echo "scale=2; $sum + 1/$i" | bc)
done

echo "The $nth harmonic number is $sum"

