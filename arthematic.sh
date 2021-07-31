#! /bin/zsh 
 read  "a?enter a no "
 read  "b?enter a no "
 read "c?enter a no "

prob1=$(( a+b*c ))
echo $a + $b x $c= $prob1

prob2=$(( a*b+c ))
echo $a x $b + $c=$prob2

prob3=$(( c+a/b ))
echo $c + $a / $b=$prob3

prob4=$(( a%b+c ))
echo $a % $b + $c=$prob4

declare -A dictionary

dictionary=([" a+b*c "]=$prob1 [" a*b+c"]=$prob2 ["c+a/b"]=$prob3 ["a%b+c"]=$prob4)
echo $dictionary

declare -a array

count=1

array=(0 0 0 0)

for value in ${(k)dictionary[@]}
do
        echo key:$value value:${dictionary[$value]}
        array[$count]=${dictionary[$value]}
        count=$(( count+1  ))
done

echo array which stores value of dictionary ${array[@]}


declare -a duplicateArray

for (( index=1;index<=${#array[@]};index++ ))
do
        larger=0
        for (( count=1;count<=${#array[@]};count++ ))
        do
        if [ ${array[$index]} -lt ${array[$count]} ]
        then
        larger=${array[$index]}
        array[$index]=${array[$count]}
        array[$count]=$larger
        fi
        done
done

echo $array in assending order
for (( index=${#array[@]};index>=1;index-- ))
do
        duplicateArray[$(( ${#array[@]}-$index+1 ))]=${array[$index]}
done

echo $duplicateArray in decending order

