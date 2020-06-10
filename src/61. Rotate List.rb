# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @param {Integer} k
# @return {ListNode}
def rotate_right(head, k)
  return head if head == nil || head.next == nil || k == 0
  # find the tail
  tail = head
  length = 1
  while tail.next
    tail = tail.next
    length += 1
  end
  k = k % length
  return head if k == 0
  # connect tail to the head
  tail.next = head
  # find the new tail and head
  while k < length
    tail = tail.next
    k += 1
  end
  head = tail.next
  tail.next = nil 
  head
end