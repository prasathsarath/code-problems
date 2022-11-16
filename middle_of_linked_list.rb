# Problem Link: https://leetcode.com/problems/middle-of-the-linked-list/?envType=study-plan&id=level-1

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
def middle_node(head)
  first = head
  second = head
  loop do
    break if second.nil? || second.next.nil?
    first = first.next
    second = second.next.next
  end
  first
end