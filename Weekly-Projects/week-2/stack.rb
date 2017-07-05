class Stack
  def initialize(initial_value = nil)
    @top = Node.new(initial_value)
      if initial_value #initializes an empty vode
      else @top = nil
  end

  def push(value)
    #if the
    if @top == nil
      @top = Node.new(value)
    else
      old_top = @top
      @top = Node.new(value)
      @top.next = old.top
  end

  def pop
    old_top = @top #save the top node in the stact
    @top = @top.next  #set the @top to point at next
    old_top
  end

  def peek
    #Return the value on the top of the stack 
  end

end

our_stack = Stack.new
our_stack.push(3)
