for (( i=0; i<5; i++ ))
do
 random=$((100+RANDOM%900))
echo "Random $i:" $random
if [ $random -gt $max ]
then
max= $random
if[ $random -lt $min ]
then.
min= $random
fi
done
echo "max value:" $max
echo "min value:" $min

