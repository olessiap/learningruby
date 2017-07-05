module Towable
  def can_tow?(pounds)
    pounds < 2000 ? true : false
  end
end


class Vehicle #superclass that has vehicle specific methods
  @@number_of_vehicles = 0 #start the count of vehicle objects at 0
  attr_accessor :color
  attr_reader :year, :model
  attr_writer :year

  def self.number_of_vehicles #self bc its a class variable
    puts "this program has created #{@@number_of_vehicles} vehicles"
  end

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @current_speed = 0
    @@number_of_vehicles += 1 #increments each time an objest is initialized
  end

  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas"
  end

  def speed_up(number)
    @current_speed += number
    puts "You push the gas and accelerate #{number} mph."
  end

  def brake(number)
    @current_speed -= number
  end

  def spray_paint(color)
    self.color = color
    puts "you spray painted your car!! the color is now #{color}"
  end
end

class MyCar < Vehicle
  NUMBER_OF_DOORS = 4

  def to_s
    "my car is a #{year} #{color} #{model}"
  end
end

class MyTruck < Vehicle
  include Towable

  NUMBER_OF_DOORS = 2
  def to_s
    "my truck is a #{year} #{color} #{model}"
  end
end

car = MyCar.new(2009, "Green", "Eclipse")
truck = MyTruck.new(2019, "Pink", "toyta")

puts car #my car is a 2009 Green Eclipse
puts truck #my truck is a 2019 Pink toyta
puts Vehicle.number_of_vehicles #prints self.number_of_vehicles method``
puts MyCar.ancestors #shows method look up heiarchy
puts truck.can_tow?(200) #true

car.year = '2000' #changes the value of year bc of attr_writer
puts car.year


#class tests
# lumina = MyCar.new(1997, 'chevy lumina', 'white')
# lumina.speed_up(20)
# lumina.current_speed
# lumina.speed_up(20)
# lumina.current_speed
# lumina.brake(20)
# lumina.current_speed
# lumina.brake(20)
# lumina.current_speed
# lumina.shut_down
# MyCar.gas_mileage(13, 351)
# lumina.spray_paint("red")
# puts lumina
# puts MyCar.ancestors
# puts MyTruck.ancestors
# puts Vehicle.ancestors
