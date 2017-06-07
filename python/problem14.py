def collatz_sequence_length(n):
    sequence = 1
    while n > 1:
        if n % 2 == 0:
            n = n // 2
        else:
            n = 3 * n + 1
        sequence += 1
    return sequence


def longest_collatz_under(n):
    longest_seq = 0
    ans = 0
    m = 0
    for i in range(n):
        m = collatz_sequence_length(i)
        ans = i if m > longest_seq else ans
        longest_seq = m if m > longest_seq else longest_seq
    return ans

print(longest_collatz_under(1000000))
