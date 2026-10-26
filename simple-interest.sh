#!/bin/bash
# This script calculates simple interest given principal,
# annual rate of interest and time period in years.

# Do not use this in production. Sample purpose only.

# Author: Madhur

echo "Enter the principal amount:"
read p
echo "Enter the annual rate of interest (in %):"
read r
echo "Enter the time period in years:"
read t

# Calculate simple interest
simple_interest=$(echo "scale=2; $p * $r * $t / 100" | bc)

echo "Simple Interest = $simple_interest"
