# Diameter of Binary Tree
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

def high(node)
  return 0 if node == nil
  [high(node.left), high(node.right)].max+1
end

def diameter_of_binary_tree(root)
  return 0 if root == nil
  h_left = high(root.left)
  h_right = high(root.right)

  d_left = diameter_of_binary_tree(root.left)
  d_right = diameter_of_binary_tree(root.right)

  [h_left+h_right, d_left, d_right].max
end