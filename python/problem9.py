def pythagorean_triplet():
    for i in range(1, 1000):
        for j in range(i + 1, 1000):
            c = (i ** 2 + j ** 2) ** 0.5
            if i + j + c == 1000:
                return str(i) + "x" + str(j) + "x" + str(int(c)) + "=" + str(int(i * j * c))

print(pythagorean_triplet())
