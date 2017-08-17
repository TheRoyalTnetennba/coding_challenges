from decimal import *


def reciprocal_cycles(n):
    answer = 0
    getcontext().prec = n * 10
    x = str(Decimal(1) / Decimal(n))
    x = x[:-1]
    for i in range(3, n):
        if x[-i:] == x[(-2 * i):-i]:
            answer = len(x[-i:])
            break
    return answer

length = 0
answer = 0
for i in range(2, 1000):
    x = reciprocal_cycles(i)
    if x > length:
        length = x
        answer = i

print(answer)
