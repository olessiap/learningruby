require_relative "board"

class Game
  attr_accessor :board

  def initialize(filename)
    @board = Board.from_file(filename) #creates a new board from file
  end

  #methods for managing the Board-Player interaction

  #play loop that runs until its solved?
  def playing
    loop do
      prompt
      @board.render #instance v of the board class
      break if @board.solved?
    end
  end

  def prompt
    puts "pick a row from 1-9"
    r = gets.chomp.to_i - 1
    puts "pick a column: 1-9"
    c = gets.chomp.to_i - 1
    puts "pick a value: 1-9"
    v = gets.chomp.to_i
    @board.update_value(r, c, v) #accesses the board class   #in BOARD update tile at position with the new value
  end


  def validate


  end
end

  # check update_value against solved file
  # => if pos, value is correct --> Solved True
  # => if not, prom
  #pt again


    #perhaps helper methods to get and validate input from users



ss = Game.new("/Users/Olie/coding/learningruby/ddev_solutions/Oleeessia/week-2/sudoku/sudoku1-almost.txt")

#p ss
#ss.prompt

ss.playing
