class Queue
  def initialize(initial_value = nil) #optional
    @first = Node.new(initial_value) #doubly linked list node
      if initial_value != nil
        new_node = Node.new(initial_value)
        @first = new_node
        @last = new_node
      else
        @first = nil
        @last = nil
      end 
  end

  #4 -> 3(add)-> 2(start) -> nil
  def enqueue(value) #put a new item into the queue
    if @first = nil
      Node.new(value)
    else
      old_first = @first
      @first = Node.new(value)
      @first_next = old_first
  end

  def dequeue #remove the first node from the queue and return its value
  end

end

queueu = Queue.new(2)
