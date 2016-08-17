#!/bin/bash
num1=$1
num2=$2
soma=0
qtde_num=0

while [ $num1 -le $num2 ]
do
  resto=`expr $num1 % 2`
  if [ $resto -eq 0 ]
  then
    soma=`expr $soma + $num1`
    let qtde_num++
  fi
  let num1++
done
media=`expr $soma / $qtde_num`
echo " A média dos números pares é.: $media"