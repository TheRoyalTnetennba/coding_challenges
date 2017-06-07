def is_palindrome(n):
    return str(n) == str(n)[::-1]

def largest_palindrome():
    palindromes = []
    for i in range(100,1000):
        for j in range(100,1000):
            if is_palindrome(i*j):
                palindromes.append(i*j)
    return max(palindromes)

print(largest_palindrome())
