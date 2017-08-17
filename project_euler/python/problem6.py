def sum_square():
    n = 0
    for i in range(101):
        n += i ** 2
    return n

def square_sum():
    n = 0
    for i in range(101):
        n += i
    return n ** 2

print(square_sum() - sum_square()) # = 25164150
