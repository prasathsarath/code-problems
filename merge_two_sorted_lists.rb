# Problem Link: https://leetcode.com/problems/merge-two-sorted-lists/?envType=study-plan&id=level-1

# Solution:

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} list1
# @param {ListNode} list2
# @return {ListNode}
def merge_two_lists(list1, list2)
  return list2 if list1.nil?
  return list1 if list2.nil?
  result = nil
  result_tracker = nil
  list1_pointer = list1
  list2_pointer = list2
  loop do
    break if list1_pointer.nil? || list2_pointer.nil?
    if list1_pointer.val <= list2_pointer.val
      temp = list1_pointer.next
      if result.nil?
        result = list1_pointer
        result_tracker = result
      else
        result_tracker.next = list1_pointer
        result_tracker = result_tracker.next
      end
      list1_pointer = temp
    else
      temp = list2_pointer.next
      if result.nil?
        result = list2_pointer
        result_tracker = result
      else
        result_tracker.next = list2_pointer
        result_tracker = result_tracker.next
      end
      list2_pointer = temp
    end
  end
  if list1_pointer.nil? && !list2_pointer.nil?
    result_tracker.next = list2_pointer
  elsif !list1_pointer.nil? && list2_pointer.nil?
    result_tracker.next = list1_pointer
  end
  result
end