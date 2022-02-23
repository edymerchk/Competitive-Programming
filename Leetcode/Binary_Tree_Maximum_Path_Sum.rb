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
def max_path_sum(node)
  return 0 if node == nil

  left = max_path_sum(node.left)
  right = max_path_sum(node.right)

  both = left+both+node.val
  [left, right, both].max
end


puts max_path_sum([1,2,3])