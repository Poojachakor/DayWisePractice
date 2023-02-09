array=(7 4 5 6 1 3 2 9 8)


sorted=($(echo "${array[@]}" | tr " " "\n" | sort -n))


second_largest=${sorted[-2]}


second_smallest=${sorted[1]}


echo "The 2nd largest element is: $second_largest"
echo "The 2nd smallest element is: $second_smallest"

