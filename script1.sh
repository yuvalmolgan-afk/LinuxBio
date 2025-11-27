#!/bin/bash
param1=$1
echo $param1
echo 123
echo 456
whoami
pwd
pwdout=$(pwd)
echo "pwdout:${pwdout}"
sum=$((10+2))
sum2=$((sum+3))

echo "sum = $sum"
echo "sum2 = $sum2"
echo "pwd = `pwd`"
