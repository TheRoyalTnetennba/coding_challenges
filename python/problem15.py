def factorial(n):
    answer = 1
    for i in range(1, n + 1):
        answer = answer * i
    return answer


def latticePath(sides):
    return factorial(sides) // (factorial(int(sides / 2))**2)


print(latticePath(40))
