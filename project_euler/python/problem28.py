def diag_sum():
    diags = []
    n = 0
    x = 1
    while len(diags) < 2000:
        if len(diags) % 4 == 0:
            n += 2
        x += n
        diags.append(x)
    return sum(diags) + 1

print(diag_sum())
