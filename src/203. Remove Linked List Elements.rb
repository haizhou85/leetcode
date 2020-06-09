# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @param {Integer} val
# @return {ListNode}
def remove_elements(head, val)
  sentinel = ListNode.new
  sentinel.next = head
  prev, curr = sentinel, head
  while curr != nil
    if curr.val == val
      prev.next = curr.next
    else
      prev = curr
    end
    curr = curr.next
  end
  sentinel.next
end


