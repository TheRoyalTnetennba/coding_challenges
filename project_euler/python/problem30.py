def sum_5th(n):
    n = str(n)
    x = 0
    for i in n:
        x += int(i) ** 5
    return x == int(n)

answer = 0
for i in range(2, 1000000):
    if sum_5th(i):
        answer += i

print(answer)
