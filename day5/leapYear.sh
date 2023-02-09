echo "enter year"
read year
a=$(( $year % 400 ))
b=$(( $year % 100 ))
c=$(( $year % 4))
if [[ $f -eq 0 || $g -ne 0 && $h -eq 0 ]]
then
echo "$year is leap"
else
echo "$year is not leap"
fi
leap year

