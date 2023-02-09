n=$1
counter=0
while [ $counter -le $n ]
do
result=$(( 2 ** counter ))
echo "2^$counter = $result"
((counter++))
done

