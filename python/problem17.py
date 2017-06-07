import inflect


def letterCount(num):
    count = 0
    alphanum = inflect.engine().number_to_words(num)
    for i in alphanum:
        if i.isalpha():
            count += 1
    return count


def letterCountNumberSum(start, through):
    ans = 0
    for i in range(start, through + 1):
        ans += letterCount(i)
    return ans

print(letterCountNumberSum(1, 1000))


def letter_count(n):
    alpha_nums = {
        0: '',
        1: 'one',
        2: 'two',
        3: 'three',
        4: 'four',
        5: 'five',
        6: 'six',
        7: 'seven',
        8: 'eight',
        9: 'nine',
        10: 'ten',
        11: 'eleven',
        12: 'twelve',
        13: 'thirteen',
        14: 'fourteen',
        15: 'fifteen',
        16: 'sixteen',
        17: 'seventeen',
        18: 'eighteen',
        19: 'nineteen',
        20: 'twenty',
        30: 'thirty',
        40: 'forty',
        50: 'fifty',
        60: 'sixty',
        70: 'seventy',
        80: 'eighty',
        90: 'ninety',
        1000: 'onethousand',
    }
    answer = 0
    if n in alpha_nums:
        answer = len(alpha_nums[n])
    else:
        n = [int(i) for i in str(n)]
        ones = 0 if len(n) > 1 and n[-2] == 1 else len(alpha_nums[n[-1]])
        hundreds = len(alpha_nums[n[-3]]) + 7 if len(n) > 2 else 0
        teens = 0 if len(n) == 1 or n[-2] != 1 else len(alpha_nums[(10 + n[-1])])
        tens = len(alpha_nums[(n[-2] * 10)]) if len(n) > 1 and n[-2] > 1 else 0
        ands = 3 if len(n) > 2 and (n[-1] != 0 or n[-2] != 0) else 0
        answer = ones + hundreds + tens + teens + ands
    return answer


def letter_sum(n):
    answer = 0
    for i in range(1, n + 1):
        answer += letter_count(i)
    return answer

print(letter_sum(1000))
