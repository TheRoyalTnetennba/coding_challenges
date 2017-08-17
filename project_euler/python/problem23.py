def is_abundant(n):
    i = 2
    upper = n
    sum_divs = 1
    while i < upper:
        if n % i == 0:
            upper = n / i
            sum_divs += upper
            if upper != i:
                sum_divs += i
        i += 1
    return sum_divs > n


def non_abundant_sum():
    abundant_nums = [i for i in range(12, 28124) if is_abundant(i)]
    abundant_set = set(abundant_nums)
    non_abundant_sum = 0
    for i in range(1, 28124):
        not_ab_sum = True
        for j in abundant_nums:
            if j < i:
                if (i - j) in abundant_set:
                    not_ab_sum = False
                    break
            else:
                break
        if not_ab_sum:
            non_abundant_sum += i
    return non_abundant_sum


print(non_abundant_sum())
