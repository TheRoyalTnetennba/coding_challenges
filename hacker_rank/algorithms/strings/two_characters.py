#!/bin/python3

import sys

def is_t(arr):
    for i in range(0, len(arr) - 2):
        if arr[i] != arr[i + 2] or arr[i] == arr[i+1]:
            return False
    return True

s_len = int(input().strip())
s = list(input().strip())
letters = {}
for a in s:
    letters[a] = True
letters = list(letters.keys())
largest = 0
for a in letters:
    for b in letters:
        if a == b:
            continue
            
        arr = [c for c in s if c == a or c == b]
        largest = len(arr) if len(arr) > largest and is_t(arr) else largest

print(largest)

