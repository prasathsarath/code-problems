# Problem: https://leetcode.com/problems/binary-tree-level-order-traversal/

# Solution:

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Integer[][]}
def level_order(root)
  level_order_helper(root, 0, [])  # starting from 0
end

def level_order_helper(root, level, result)
  return result if root.nil?
  result[level] = [] if level == result.length
  result[level] << root.val
  level_order_helper(root.left, level + 1, result)
  level_order_helper(root.right, level + 1, result)
  result
end
