require_relative "board"

class Solve
  attr_accessor :grid, :board
  def initialize(filename)
    @board = Board.from_file(filename)
  end

  def validator()
    if @board.render == @board.tile
      @board.solved?
    end
  end
end

sss = Solve.new("/Users/Olie/coding/learningruby/ddev_solutions/Oleeessia/week-2/sudoku/sudoku1-solved.txt")

sss.validator
