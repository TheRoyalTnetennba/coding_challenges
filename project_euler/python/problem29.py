# a^b for 2 ≤ a ≤ 100 and 2 ≤ b ≤ 100
answer = []
for a in range(2, 101):
    for b in range(2, 101):
        x = a ** b
        if x not in answer:
            answer.append(x)
print(len(answer))
