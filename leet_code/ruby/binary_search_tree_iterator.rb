# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

class BSTIterator
  # @param {TreeNode} root
  def initialize(root)
    @root = root
    @last = 'r'
    @vals = root ? [root.val] : []
    traverse
  end

  def traverse(root = @root)
    return if !root
    @vals.push(root.left.val) if root.left
    @vals.push(root.right.val) if root.right
    traverse(root.left) if root.left
    traverse(root.right) if root.right
  end

  # @return {Boolean}
  def has_next
    @vals.size > 0
  end

  # @return {Integer}
  def next
    @vals.pop
  end
end

# Your BSTIterator will be called like this:
# i, v = BSTIterator.new(root), []
# while i.has_next()
#    v << i.next
# end