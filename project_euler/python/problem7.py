def is_prime(n):
    num = 0
    for i in range(2,int(n ** 0.5) + 1):
        if n % i == 0:
            num += 1
            break
    return num == 0

def th_prime(x):
    m = 3
    primes = [2]
    while len(primes) <= x:
        if is_prime(m):
            primes.append(m)
        m += 2
    return primes[x-1]

print(th_prime(10001))
