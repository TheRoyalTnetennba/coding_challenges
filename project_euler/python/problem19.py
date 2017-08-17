def counting_sundays():
    day = 2
    firstSundays = 0
    thirty = [4, 6, 9, 11]
    for y in range(1900, 2001):
        for m in range(1, 13):
            if m == 2:
                n = 28 if y % 4 != 0 or (y % 100 == 0 and y % 400 != 0) else 29
            elif m in thirty:
                n = 30
            else:
                n = 31
            for d in range(1, n + 1):
                if d == 1 and day % 7 == 1 and y > 1900:
                    firstSundays += 1
                day += 1
    return firstSundays

print(counting_sundays())
