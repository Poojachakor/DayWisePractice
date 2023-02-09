day=$((1+RANDOM%30))
echo "day:" $day
month=$((1+RANDOM%11))
echo "month:" $month
if [[ "$month" -gt 3 && "$month" -lt 6 ]]
then
if [[ $month -eq 3 ]]
then
if [[ $day -gt 20 ]]
then
echo "TRUE"
else
echo "FALSE"
fi
if [[ $month -eq 6 ]]
then
if [[ $day -lt 20 ]]
then
echo "true"
day and month

