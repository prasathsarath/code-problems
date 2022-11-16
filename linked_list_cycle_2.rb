# Problem: https://leetcode.com/problems/linked-list-cycle-ii/?envType=study-plan&id=level-1

# Solution:

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {ListNode}
def detectCycle(head)
  return head if head.nil?
  meeting_node = find_meeting_node(head)
  return meeting_node if meeting_node.nil?
  loop do
    break if head == meeting_node
    head = head.next
    meeting_node = meeting_node.next
  end
  head
end

def find_meeting_node(head)
  first = head
  second = head
  loop do
    break if second.nil? || second.next.nil?
    first = first.next
    second = second.next.next
    return first if first == second
  end
  nil
end
  
  