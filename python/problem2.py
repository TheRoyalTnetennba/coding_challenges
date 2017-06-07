def even_fibonacci_sum():
    nums = [1, 2]
    while True:
        if nums[len(nums) - 1] + nums[len(nums) - 2] > 4000000:
            break
        else:
            nums.append(nums[len(nums) - 1] + nums[len(nums) - 2])
    ans = 0
    for i in nums:
        if i % 2 == 0:
            ans += i
    print(ans)

even_fibonacci_sum()
