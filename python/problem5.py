def one_through_twenty(x):
    num = 0
    for i in range(2, 21):
        if x % i != 0:
            num += 1
            break
    return num == 0


def smallest_multiple():
    n = 2520
    while not(one_through_twenty(n)):
        n += 2520
    return n

print(smallest_multiple())
