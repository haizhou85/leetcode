# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
  head = l1
  carry = 0
  while l1 && l2
    l1.val += (l2.val + carry)
    carry = 0
    if l1.val >= 10
      carry = 1
      l1.val -= 10
    end
    if l1.next == nil && l2.next != nil
      l1.next = ListNode.new
    end
    if l2.next == nil && l1.next != nil
      l2.next = ListNode.new
    end
    if carry == 1 && l1.next == nil && l2.next == nil
      l1.next = ListNode.new(1)
    end
    l1 = l1.next
    l2 = l2.next
  end
  head
end

    