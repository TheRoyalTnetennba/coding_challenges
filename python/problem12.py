def divisors(n):
    factors = 0
    for i in range(1, int(n ** 0.5) + 1):
        if n % i == 0:
            factors += 2
    return factors


def triangle_factors(n):
    attempt = 0
    while not(divisors((attempt * (attempt + 1)) // 2) > n):
        attempt += 1
    return (attempt * (attempt + 1)) // 2

print(triangle_factors(500))
