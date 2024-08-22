#!bin/bash 
# this is the example for array which holds multipl values

PERSONS=("Megha" "Bhargav" "Tejas")

echo "The head of the family is 1st persom in the array:${PERSONS[0]}"
echo " the All family numbers from the array is :${PERSONS[@]}"