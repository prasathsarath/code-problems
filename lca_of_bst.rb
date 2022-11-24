# Problem Link: https://leetcode.com/problems/lowest-common-ancestor-of-a-binary-search-tree/

# Solution:

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @param {TreeNode} p
# @param {TreeNode} q
# @return {TreeNode}
def lowest_common_ancestor(root, p, q)
  if p.val > q.val
    temp = p
    p = q
    q = temp
  end
  lca_helper(root, p, q)
end

def lca_helper(root, p, q)
  return root if root.nil?
  return root if root.val == p.val || root.val == q.val
  return root if root.val > p.val && root.val < q.val
  if root.val > q.val
    lca_helper(root.left, p, q)
  else
    lca_helper(root.right, p, q)
  end
end
