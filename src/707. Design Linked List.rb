# singly linked
class Node
    attr_accessor :next
    attr_reader   :val
    def initialize(value)
      @val = value
      @next  = nil
    end
  end
  
  
class MyLinkedList

=begin
  Initialize your data structure here.
=end
  def initialize()
    @head = nil
    @size = 0
  end


=begin
  Get the value of the index-th node in the linked list. If the index is invalid, return -1.
  :type index: Integer
  :rtype: Integer
=end
  def get(index)
    return -1 if index < 0 || index >= @size
    current = @head
    index.times do 
      current = current.next
    end
    current.val
  end


=begin
  Add a node of value val before the first element of the linked list. After the insertion, the new node will be the first node of the linked list.
  :type val: Integer
  :rtype: Void
=end
  def add_at_head(val)
    @size += 1
    new = Node.new(val)
    head = @head
    new.next = head
    @head = new
  end


=begin
  Append a node of value val to the last element of the linked list.
  :type val: Integer
  :rtype: Void
=end
  def add_at_tail(val)
    if @size == 0
      add_at_head(val)
    else
      new = Node.new(val)
      tail = @head
      (@size-1).times do 
        tail = tail.next
      end
      @size += 1
      tail.next = new
    end
  end


=begin
  Add a node of value val before the index-th node in the linked list. If index equals to the length of linked list, the node will be appended to the end of linked list. If index is greater than the length, the node will not be inserted.
  :type index: Integer
  :type val: Integer
  :rtype: Void
=end
  def add_at_index(index, val)
    return if index > @size
    index = 0 if index < 0
    return add_at_head(val) if index == 0
    return add_at_tail(val) if index == @size
    new = Node.new(val)
    pre = @head
    @size += 1
    (index-1).times do
      pre = pre.next
    end
    new.next = pre.next
    pre.next = new
  end


=begin
  Delete the index-th node in the linked list, if the index is valid.
  :type index: Integer
  :rtype: Void
=end
  def delete_at_index(index)
    return if index < 0 || index >= @size || @size == 0
    @size -= 1
    if index == 0
      @head = @head.next
    else
      pre = @head
      (index-1).times do
        pre = pre.next
      end
      pre.next = pre.next.next
    end
  end
end

# Your MyLinkedList object will be instantiated and called as such:
# obj = MyLinkedList.new()
# param_1 = obj.get(index)
# obj.add_at_head(val)
# obj.add_at_tail(val)
# obj.add_at_index(index, val)
# obj.delete_at_index(index)

# doubly linked
class Node
  attr_accessor :next, :prev
  attr_reader   :val
  def initialize(value)
    @val = value
    @next = nil
    @prev = nil
  end
end

class MyLinkedList

  def initialize()
    @head = nil
    @size = 0
  end

  def get(index)
    return -1 if index < 0 || index >= @size
    current = @head
    index.times do 
      current = current.next
    end
    current.val
  end

  def add_at_head(val)
    @size += 1
    new = Node.new(val)
    head = @head
    if head != nil
      head.prev = new
    end
    new.next = head
    @head = new
  end

  def add_at_tail(val)
    if @size == 0
      add_at_head(val)
    else
      new = Node.new(val)
      tail = @head
      (@size-1).times do 
        tail = tail.next
      end
      @size += 1
      tail.next = new
      new.prev = tail
    end
  end

  def add_at_index(index, val)
    return if index > @size
    index = 0 if index < 0
    return add_at_head(val) if index == 0
    return add_at_tail(val) if index == @size
    new = Node.new(val)
    pre = @head
    @size += 1
    (index-1).times do
      pre = pre.next
    end
    next_node = pre.next
    new.next = pre.next
    new.prev = pre
    next_node.prev = new
    pre.next = new
  end

  def delete_at_index(index)
    return if index < 0 || index >= @size || @size == 0
    @size -= 1
    if index == 0
      @head = @head.next
      @head.prev = nil if @head != nil
    else
      pre = @head
      (index-1).times do
        pre = pre.next
      end
      pre.next = pre.next.next
      next_node = pre.next
      if next_node != nil
        next_node.prev = pre
      end
    end
  end
end