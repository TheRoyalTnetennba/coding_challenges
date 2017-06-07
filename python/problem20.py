def factorial_digit_sum(n):
    factorial = 1
    while n > 1:
        factorial = n * factorial
        n -= 1
    factorial = [int(i) for i in list(str(factorial))]
    return sum(factorial)

print(factorial_digit_sum(100))
