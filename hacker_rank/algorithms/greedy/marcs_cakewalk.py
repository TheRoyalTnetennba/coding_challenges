#!/bin/python3

import sys

n = int(input().strip())
calories = list(map(int, input().strip().split(' ')))

calories.sort(reverse=True)
miles = 0
for i in range(len(calories)):
    miles += (2**i * calories[i])

print(miles)

