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

# iterative
def reverse_list(head)
    cur = head
    pre = nil
    while cur != nil
        tmp = cur.next
        cur.next = pre
        pre = cur
        cur = tmp
    end
    pre
end

# recursive
def reverse_list(head)
    return head if head == nil || head.next == nil
    p = reverse_list(head.next)
    head.next.next = head
    head.next = nil
    p
end