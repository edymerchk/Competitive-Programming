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
def dfs(node, max)
  [node.left, node.right].compact.each do |child|
    max = dfs(child, max)
    diameter = high(node.left) + high(node.right)
    max = diameter if diameter > max
  end
  max
end
def diameter_of_binary_tree(root)
  return 0 if root == nil
  dfs(root, 0)
end
