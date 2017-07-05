module Walkable
  def walk
    puts "Lets go on a walk"
  end
end

class Cat
  include Walkable
  attr_reader :name
  attr_writer :name  #allows name to change in kitty.name = "luna"

  def initialize(name)
    @name = name
  end

  def greet
    puts "hello! My name is #{name}!" #@ here if now getter method
  end
end

kitty = Cat.new('Sophie')
kitty.greet #hello! My name is Sophie!
# kitty.name = "Luna"
# kitty.greet #hello! My name is Luna!
kitty.walk # envokes the Walkable module method here
