#!/bin/bash
# Repository Name: github-final-project
# Submitted URL: https://github.com/mad-codes7/github-final-project/blob/main/simple-interest.sh
# This script calculates simple interest given principal, annual rate of interest and time period in years.
# Input fields: principal, rate of interest, time period

echo "Enter the principal:"
read p
echo "Enter rate of interest per year:"
read r
echo "Enter time period in years:"
read t

s=`expr $p \* $t \* $r / 100`
echo "The simple interest is: "
echo $s
