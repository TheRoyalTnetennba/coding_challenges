def sum_divisors(n):
    divisors = [1]
    for i in range(2, int(n / 2) + 1):
        if n % i == 0:
            divisors.append(i)
    return sum(divisors)


def is_amicable(x, y):
    return sum_divisors(x) == y and sum_divisors(y) == x and x != y


def amicable_sum(n):
    amicables = []
    for i in range(1, n):
        if is_amicable(sum_divisors(i), i):
            if sum_divisors(i) not in amicables and i not in amicables:
                amicables.append(sum_divisors(i))
                amicables.append(i)
            elif sum_divisors(i) in amicables and i not in amicables:
                amicables.append(sum_divisors(i))
            elif sum_divisors(i) not in amicables and i in amicables:
                amicables.append(i)
    return sum(amicables)

print(amicable_sum(10000))
