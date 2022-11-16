# Problem Link: https://leetcode.com/problems/reverse-linked-list/?envType=study-plan&id=level-1

# Solution:

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}
def reverse_list(head)
  return head if head.nil? || head.next.nil?
  temp = reverse_list(head.next)
  head.next.next = head
  head.next = nil
  temp
end