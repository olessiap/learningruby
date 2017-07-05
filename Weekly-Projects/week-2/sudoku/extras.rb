require "./sudoku"

#figure out what the pbulic methods will be
#tile#value
#Tile#to_s
#Tile#mutable
#Tile#value=



def assert(a, b)
  a == b
end


#Tile#value tests
puts assert(Tile.new(0).value, nil)
puts assert(Tile.new(1).value, 1)
puts assert(Tile.new(5).value, 5)
puts assert(Tile.new(9).value, 9)

#Tile.new to test a number biger than 10
# puts assert(Tile.new(10), Error)
# puts assert(Tile.new(15), Error)
# puts assert(Tile.new(-1), Error)

#Tile#to_s tests
puts assert(Tile.new)(1).to_s("1")
puts assert(Tile.new)(9).to_s("9")
puts assert(Tile.new)(0).to_s("_")

p Tile.new(0).to_s



#Tile#mutable= tests #if nill its mutable if not nil
puts assert(Tile.new)(0).mutable? true)
puts assert(Tile.new)(1).mutable? false)
puts assert(Tile.new)(9).mutable? false)

test_tile = Tile.new(0)
test_tile.value = 7
puts assert(test_tile.mutable?, true)

#Tile#value= test
test_tile = Tile.new(0)
puts assert(test_tile.value = 1, 1)
puts assert(test_tile.value, 1)

test_tile = Tile.new(1)
#puts assert(test_tile.value = 1, Raise Error)



#Tile#value= tests
