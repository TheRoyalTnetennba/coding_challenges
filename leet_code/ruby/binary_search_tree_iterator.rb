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
    @vals = Hash.new
    @vals[0] = root ? [root.val] : []
    traverse
    gen_lvls
  end

  def traverse(root = @root, lvl = 1)
    return if !root
    @vals[lvl] = []
    @vals[lvl] << root.left.val if root.left
    @vals[lvl] << root.right.val if root.right
    traverse(root.left, lvl + 1) if root.left
    traverse(root.right, lvl + 1) if root.right
  end

  def gen_lvls
    @lvls = []
    @vals.keys.each do |k|
      @vals[k].size.times { @lvls << k }
    end
  end

  def bottom_left
    return nil if !root
    current = root
    current = current.left while current.left && current.left.val
  end

  # @return {Boolean}
  def has_next
    @lvls.size > 0
  end

  # @return {Integer}
  def next
    bl = bottom_left
    current = bl.right ? bl.right : bl
    val = current.val
    current.val = nil

  end
end

# Your BSTIterator will be called like this:
# i, v = BSTIterator.new(root), []
# while i.has_next()
#    v << i.next
# end