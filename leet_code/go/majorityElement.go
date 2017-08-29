func majorityElement(nums []int) int {
    count := make(map[int]int)
    maj := len(nums) / 2
    for _, el := range nums {
        if _, ok := count[el]; !ok {
            count[el] = 0
        }
        count[el] += 1
        if count[el] > maj {
            return el
        }
    }
    return maj
}