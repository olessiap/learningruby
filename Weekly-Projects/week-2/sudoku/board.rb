require_relative "tile" #.rb needed?

class Board #entire board of tiles
  attr_accessor :grid
  def initialize(grid) #empty grid )
    @grid = grid
  end

  #factory method to read txt file,
  #& parse it into a 2 dim array containing Tile instances
    #rows = read file
    #tiles => go over each row of the numbers
      # =>  split the rows
      # => and map the numbers in the new tile

      #return the tiles
  def self.from_file(filename)
    grid = Array.new(9){Array.new(9, Tile.new(0))} ##store an empty grid of Tiles
    File.read(filename).split("\n").map.with_index do |line, i| #with index to keep track of location [[1234566789],[123456789]]
      line.chomp.split('').map.with_index {|tile, j| grid[i][j]=Tile.new(tile) } #add to empty arr
    end
    return Board.new(grid)
  end

  #render method: displays current board state
  def render
    #puts "current state of the grid:"
    grid.each do |row|
      row.map do |tile|
        print tile
      end
      puts
    end
  end


  def update_value(r, c, v)
    #method to update value of a Tile at a given position
     updated_v = grid[r][c].value = v.to_s
     puts "the board now looks like this:"
     #p render
  end

def solved?
  #until solved
  solved = true
  grid.each do |row|
    row.map do |tile|
      if tile.value == '0' then solved = false end
    end
  end
  return solved?
end

end
s = Board.from_file("/Users/Olie/coding/learningruby/ddev_solutions/Oleeessia/week-2/sudoku/sudoku1-almost.txt")
#p s
s.render
#s.update_value(0,0,9)
#s.prompt
#s.solved?
