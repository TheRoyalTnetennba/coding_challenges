values = list(map(int, input().strip().split(' ')))
fibs = [values[0], values[1]]
while len(fibs) < values[2]:
    fibs.append(fibs[len(fibs) - 2] + (fibs[len(fibs) - 1]**2))
    