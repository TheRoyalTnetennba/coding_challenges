#n^2 + an + b
def is_prime(n):
    for i in range(2, int(n**0.5) + 1):
        if n % i == 0:
            return False
            break
    return True

length = 0
answer = 0
for a in range(-1000, 1001):
    for b in range(-1000, 1001):
        n = 0
        y = int((n**2) + (a * n) + b)
        while y >= 0 and is_prime(y):
            if n > length:
                length = n
                answer = a * b
            n += 1
            y = int((n**2) + (a * n) + b)

print(answer)
