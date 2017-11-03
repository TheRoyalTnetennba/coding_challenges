p = 1 / 3
q = 2 / 3
n = 5
total = 0
for i in range(1, n+1):
    total += q**(i-1) * p
print(round(total, 3))