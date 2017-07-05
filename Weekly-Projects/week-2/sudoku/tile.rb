require 'colorize'

class Tile # represents an individual square on the board
  attr_accessor :value # ability to change value
  #
  def initialize(value)
    #p value
    @value = value
    @given = (value != '0') # value == 0 nil : value
  end

def

  def value=(value) #ability to change value
    if @given
      raise "can't change a given value" #unless mutable?
    else
      @value = value
    end
  end

  def to_s #converts value into a string
    if @given
      @value.to_s.colorize(:red).on_blue
    else
      @value.to_s
    end
  end


  def mutable?
    if value == '0'
      true
    else
      false
    end
  end
end

# n = 003020600
# p n
# s = Tile.new(1)
# # p s
# puts s
#p s
