# Problem Link: https://leetcode.com/problems/validate-binary-search-tree/

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
# @return {Boolean}

def is_valid_bst(root)
  valid_bst_helper(root, -2147483649, 2147483648) # Taken from the constraints
end

def valid_bst_helper(root, min, max)
  return true if root.nil?
  return false if (root.val <= min || root.val >= max)
  valid_bst_helper(root.left, min, root.val) && valid_bst_helper(root.right, root.val, max)
end
