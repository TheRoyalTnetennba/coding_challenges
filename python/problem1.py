def sum_of_multiples(num):
    ans = 0
    for i in range(3, num):
        if i % 3 == 0 or i % 5 == 0:
            ans += i
    return ans
