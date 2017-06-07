index = 2
i = 1
j = 1
while len(str(i)) and len(str(j)) < 1000:
    i = i + j
    index += 1
    if len(str(i)) >= 1000:
        print(index)
        break
    j = i + j
    index += 1
    if len(str(j)) >= 1000:
        print(index)
        break
