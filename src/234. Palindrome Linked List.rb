# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {Boolean}

# extra space store values
def is_palindrome(head)
    vals = []
    curr = head
    while curr != nil
        vals << curr.val
    end
    return vals == vals.reverse()
end

# O(1) space, find the end of first half, reverse the second half
def is_palindrome(head)
    return true if head == nil || head.next == nil
    first_half_end = find_first_half(head)
    second_half_head = reverse_list(first_half_end.next)
    p1 = head
    p2 = second_half_head
    while p2 != nil
        return false if p1.val != p2.val
        p1 = p1.next
        p2 = p2.next
    end
    first_half_end.next = reverse_list(second_half_head)
    true
end

def find_first_half(head)
    fast = head
    slow = head
    while fast.next != nil && fast.next.next != nil
        fast = fast.next.next
        slow = slow.next
    end
    return slow
end

def reverse_list(head)
    curr = head
    prev = nil
    while curr != nil
        tmp = curr.next
        curr.next = prev
        prev = curr
        curr = tmp
    end
    prev
end