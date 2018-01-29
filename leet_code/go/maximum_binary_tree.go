/**
 * Definition for a binary tree node.
 * type TreeNode struct {
 *     Val int
 *     Left *TreeNode
 *     Right *TreeNode
 * }
 */


func constructMaximumBinaryTree(nums []int) *TreeNode {
	if len(nums) == 0 {
		return nil
	}
	mid := findIndexOfMax(nums)
	left := nums[0:mid]
	right := nums[(mid + 1):len(nums)]
	root := TreeNode{ Val: nums[mid] }
	root.Left = constructMaximumBinaryTree(left)
	root.Right = constructMaximumBinaryTree(right)
	return &root
}

func findIndexOfMax(nums []int) int {
	max := 0
	for i, val := range nums {
		if val > nums[max] {
			max = i
		}
	}
	return max
}

