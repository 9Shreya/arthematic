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

dictionary=([" a+b*c "]=$prob1 [" a*b+c"]=$prob2 ["c+a/b"]=$prob3 ["a%b+c"]=$pr$
echo $dictionary

