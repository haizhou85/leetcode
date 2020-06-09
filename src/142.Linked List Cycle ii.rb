def getIntersect(head)
    fast = head
    slow = head
    while fast != nil && fast.next != nil
        slow = slow.next
        fast = fast.next.next
        if slow == fast
            return slow
        end
    end
    return nil
end

def detectCycle(head)
    return nil if head == nil
    
    intersect = getIntersect(head)
    return nil if intersect == nil
    
    p1 = head
    p2 = intersect
    while p1 != p2
        p1 = p1.next
        p2 = p2.next
    end
    return p1
end
