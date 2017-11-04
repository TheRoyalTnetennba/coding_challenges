n, inputs = [int(n) for n in input().split(" ")]
arr = [0] * (n + 1)
for _ in range(inputs):
	x, y, inc = [int(n) for n in input().split(" ")]
	arr[x-1] += inc
	if (y) <= len(arr): arr[y] -= inc
big = x = 0
for i in arr:
	x = x + i;
	if big < x: big = x;
print(big)