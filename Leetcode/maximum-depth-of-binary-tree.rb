# https://leetcode.com/problems/maximum-depth-of-binary-tree/

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

def max_depth(root)
  if root == nil
    0
  else
    left = max_depth(root.left)
    right = max_depth(root.right)
    [left, right].max+1
  end
end