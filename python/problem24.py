from itertools import permutations


def nth_permutation(n, pool):
    permutes = list(permutations(pool))
    return ''.join(permutes[n - 1])


print(nth_permutation(1000000, '0123456789'))

answer = []


def lexicographic_permutations(a, b=''):
    if len(a) == 0:
        answer.append(b)
    else:
        for i in range(len(a)):
            lexicographic_permutations(a[0:i] + a[i + 1:], b + a[i])
lexicographic_permutations('0123456789')
print(answer[999999])
