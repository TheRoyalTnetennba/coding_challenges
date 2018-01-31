# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer}
def find_bottom_left_value(root)
	depth = find_depth(root)
	bottom_row = get_nodes_of_depth(root, depth)
	bottom_row.each { |val| return val if val }
end

def find_depth(root, depth = 0)
	return depth unless root.left || root.right
	left = root.left ? find_depth(root.left, depth + 1) : depth
	right = root.right ? find_depth(root.right, depth + 1) : depth
	left > right ? left : right
end

def get_nodes_of_depth(node, depth, current = 0, collection = [])
	return node.val if depth == current
	return unless node.left || node.right
	collection << get_nodes_of_depth(node.left, depth, current + 1, collection) if node.left
	collection << get_nodes_of_depth(node.right, depth, current + 1, collection) if node.right
	collection
end