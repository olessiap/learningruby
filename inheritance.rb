module Singing #backup method to use in objects
  def sing()
    p "LALALA"
  end
end

class Animal; end

class Feces
  def initialize(food)
    @smell = 'bad'
    @food = food
  end
end

class Mammal < Animal
  attr_reader :num_legs
  def initialize(num_legs)
    @num_legs = num_legs
    @stomach = []
    @colon = []
  end

  def eat(food)
    @stomach << food
    digest
  end


  private  #protects the methods below, makes them inaccessible outside of the class

  def digest
    p ".....digesting"
    @stomach.shift
    @colon << Feces.new(@stomach.shift)
    poop
  end

  def poop
    @colon.shift
  end
end

#
# jonathan = Mammal.new(2)
# p jonathan
# jonathan.eat('hamburger')

class Lion < Mammal
  def initialize
    @num_legs = 4
    @stomach = []
    @colon = []
  end

  def eat(food)
    raise ArgumentError unless food.is_a?(Animal)
    super
  end
end

class Gazelle < Mammal
end

class Human < Mammal
  include Singing #  extend Singing  same kinda
  def initialize
    @num_legs = 4
    @stomach = []
    @colon = []
  end
end


class Chimp < Mammal
  def initialize
    @num_legs = 2
    super(2)#### what this
  end
end

class Plant
end

class Bird < Animal
  include Singing
end

#chimp = Chimp.new
jonathan = Human.new
jonathan.sing # or Human.sing will do the same
bird = Bird.new
bird.sing
