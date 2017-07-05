class Cat
  @@number_of_cats = 0 #class variable, starts with 1
  attr_accessor :name
  COLOR = 'purple'

  def self.generic_greeting #class method. returns when calling Cat.generic_greeting
    puts "Hello im a cat"
  end

  def self.number_of_cats #class method. prints that there are 3 cat objects
    puts "there are now #{@@number_of_cats} cat objects"
  end

  def initialize(name)
    @name =  name
    @@number_of_cats += 1 #class variable increments by 1
  end

  def personal_greeting #instance method. returns when calling object
    puts "sup, my name is #{name} and im a #{COLOR} special cat"
  end

  def rename(new_name)
    name = new_name
    p name
  end

end

kitty1 = Cat.new('Sophie')
kitty2 = Cat.new("funcat")
kitty3 = Cat.new("superfuncat")

puts kitty1.name
kitty2.rename('chloe')
puts kitty2.name
puts Cat.generic_greeting
puts kitty3.personal_greeting
puts Cat.number_of_cats #prints 3
