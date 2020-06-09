# linked list
# two pointers
# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @param {Integer} n
# @return {ListNode}

def remove_nth_from_end(head, n)
    p1 = head
    n.times do 
        p1 = p1.next
    end
    return head = head.next if p1 == nil
    p2 = head
    while p1.next != nil
        p1, p2 = p1.next, p2.next
    end
    p2.next = p2.next.next
    head
end