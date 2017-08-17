def power_sum_digits(base, exponent):
    i = [int(i) for i in str(base**exponent)]
    return sum(i)

print(power_sum_digits(2, 1000))
