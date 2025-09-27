#!/bin/bash
NUMBER1=100
NUMBER2=200
NAME=devops
SUM=$(($NUMBER1+$NUMBER2+$NAME))

echo "SUM is: ${SUM}"

# Size = 4, Max index = 3
LEADERS=("Modi" "Putin" "Trudo" "Trump")

echo "All leaders: ${LEADERS[@]}"
echo ""first leader :${LEADERS[0]}
#echo "First Leader: ${LEADERS[0]}"
echo "First Leader: ${LEADERS[10]}"


CLASS_MATES=("raju" "surya" "sai" "venky")
echo "classmetes is ${CLASS_MATES[@]}"
echo "best friend  is ${CLASS_MATES[0]}"
