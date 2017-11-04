import math

def is_prime(n, primes):
	for i in range(2, int(n** 0.5) + 1):
		if n % i == 0: return False
	return n > 1

def get_next_prime(arr = [2, 3]):
	num = arr[len(arr) - 1] + 2
	while not is_prime(num): num += 2
	return arr + [num]

def divisors(n):
	primes = get_next_prime()
	while primes[len(primes) - 1] < 

def triangle_factors(n):
	attempt = 1
	while not(divisors((attempt * (attempt + 1)) // 2) > n):
		attempt += 1
	return (attempt * (attempt + 1)) // 2

count = int(input().strip())
for i in range(count):
	print(triangle_factors(int(input().strip())))