def is_prime(n):
    num = 0
    for i in range(2, int(n ** 0.5) + 1):
        if n % i == 0:
            num += 1
            break
    return num == 0


def sum_primes_below(num):
    ans = 2
    for i in range(3, num):
        if is_prime(i):
            ans += i
    return ans

print(sum_primes_below(2000000))
