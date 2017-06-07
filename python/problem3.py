def is_prime(n):
    multiples = 0
    for i in range(2, int(n**0.5) + 1):
        if n % i == 0:
            multiples += 1
            break
    return multiples == 0


def largest_prime_factor(num):
    x = int(num**0.5) + 1
    while x > 1:
        if num % x == 0 and is_prime(x):
            return x
            break
        else:
            x -= 1

print(largest_prime_factor(600851475143))
