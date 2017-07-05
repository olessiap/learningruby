class Node
  attr_accessor :value, :next
  #value is value of current list element
  #next - stores the next Node in the Linked List

  def initialize(value, next_node)
      @value = value
      @next = next_node
      puts "initialized a Node with value: " + value.to_s
  end
end


class LinkedList
  attr_accessor :value
  attr_reader :pointer

  #wraps the head so its up to date after changes
  def initialize(value)
    @value = value
    @head = Node.new(value, nil)
  end

  def append(value)
    #take in a data value and have a pointer that starts off at the head of the linked list
    #if head is null, create a new node
    #current node should point to the head
    #go through the linked list until we get to the end (!= null)
    #at the end of the linked list, create a new node
    current = @head
    #p current
      while current.next != nil
        current = current.next
      end
    current.next = Node.new(value, nil)
  end

  def delete(val)
    current = @head
    if current.value == val
      @head = @head.next_node
    else
      current = @head
      while current != nil && (current.next_node != nil) && ((current.next_node).value != val)
        current = current.next_node
      end

      if (current != nil) && (current.next_node != nil)
        current.next_node = (current.next_node).next_node
      end
    end
  end

  def length
    current = @head
    list_array = []
    while current.next != nil
      list_array << current.value.to_s
      p list_array
      current = current.next
    end
    list_array << current.value.to_s
      p "the length of the linked list is: " + list_array.length.to_s
      puts "it looks like dis: " + list_array.to_s
  end

  def dedup
    dummy_node = LinkedList(0)
    dummmy_node.next = @head
    dupe = nil 
    dupes = {}
    length.each do |d|
      dupes[d] = 1
    end
    p dupes.keys
  end
end

single_list = LinkedList.new(3)
p single_list # @value=3, @pointer=nil
p single_list.value # 3
single_list.append(6)
single_list.append(3)
p single_list.length
p single_list.dedup
