#!/bin/python3

import sys


s = list(input().strip())
print(len([i for i in s if i.upper() == i]) + 1 if len(s) > 0 else 0)