class Node
  attr_accessor :value, :left, :right
  # The Tree node contains a value, and a pointer to two children - left and right
   # Values lesser than this node will be inserted on its left
   # Values greater than it will be inserted on its right
  def initialize(value, left = nil, right = nil) #set to nil at first so new nodes can go in
    @value = value
    @left = left
    @right  = right
    puts "initialized the Node with value: " + @value.to_s
  end
end

class BinarySearchTree
  def initialize(value) #
    @root = Node.new(value) # fill the root with a new node with a new value
    puts "initialized the Tree with value: " + value.to_s
    #p "BinarySearchTree root is #{node.value}"
  end

  def add(new_node,current_node=@root)
    puts "inserting: " + new_node.to_s
    #current_node = @root
    p "new node is #{new_node.value}"
    p "current node is #{current_node}"
    if new_node.value > current_node.value
        if current_node.right == nil #check if empty
          current_node.right = new_node #must create a new node
        elsif
          add(new_node,current_node.right)
        end
    else
      #p @value
      if current_node.left == nil
        current_node.left = new_node
      elsif
        add(new_node,current_node.left)
      end
    end
  end
end

#node = Node.new(5)
tree = BinarySearchTree.new(5)
p tree
tree.add(Node.new(3))
tree.add(Node.new(2))
tree.add(Node.new(6))
tree.add(Node.new(8))
tree.add(Node.new(1))


p tree
