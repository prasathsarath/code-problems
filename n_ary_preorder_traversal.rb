# Problem: https://leetcode.com/problems/n-ary-tree-preorder-traversal/

# Solution:

# Definition for a Node.
# class Node
#     attr_accessor :val, :children
#     def initialize(val)
#         @val = val
#         @children = []
#     end
# end

# @param {Node} root
# @return {List[int]}
def preorder(root)
  preorder_helper(root, [])
end

def preorder_helper(root, result)
  return result if root.nil?
  result << root.val
  root.children.each do |child|
    preorder_helper(child, result)
  end
  result
end