#!/bin/python3

import sys

grid = []
for grid_i in range(20):
   grid_t = [int(grid_temp) for grid_temp in input().strip().split(' ')]
   grid.append(grid_t)

def greatest_product(grid):
    product = 0
    for i in range(20):
        for j in range(20):
            check_down, check_right, check_diagr, check_diagl = 1, 1, 1, 1
            for k in range(4):
                check_down = check_down * grid[i + k][j] if i + k < 20 else 0
                check_right = check_right * grid[i][j + k] if j + k < 20 else 0
                check_diagr = check_diagr * grid[i + k][j + k] if i + k < 20 and j + k < 20 else 0
                check_diagl = check_diagl * grid[i + k][j - k] if i + k < 20 and j - k >= 0 else 0
            biggest = max(check_down, check_right, check_diagr, check_diagl)
            if biggest > product: product = biggest
    return product

print(greatest_product(grid))