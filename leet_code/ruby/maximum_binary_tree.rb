# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {Integer[]} nums
# @return {TreeNode}
def construct_maximum_binary_tree(nums)
	return if nums.empty?
	mid = nums.each_with_index.max[1]
	root = TreeNode.new(nums[mid])
	root.left = construct_maximum_binary_tree(nums[0...mid])
	root.right = construct_maximum_binary_tree(nums[(mid + 1)...nums.size])
	root
end