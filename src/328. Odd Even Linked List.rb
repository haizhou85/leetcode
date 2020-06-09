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
def odd_even_list(head)
    return nil if head == nil
    odd, even, even_head = head, head.next, head.next
    while even != nil && even.next != nil
        odd.next = even.next
        odd = odd.next
        even.next = odd.next
        even = even.next
    end
    odd.next = even_head
    head
end