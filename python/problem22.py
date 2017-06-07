import urllib.request
url = 'https://projecteuler.net/project/resources/p022_names.txt'
response = urllib.request.urlopen(url)
data = response.read()
data = str(data)[1:].replace('"', '').replace("'", '').split(',')
data.sort()


def sumNamesScores(names):
    score = 0
    x = 64
    for i in range(len(names)):  # len(names)):
        n = 0
        for j in names[i]:
            n += (ord(j) - x)
        score += n * (i + 1)
    return score


print(sumNamesScores(data))
