=begin
In Ruby, everything is an object. Every bit of information and code can be given their own properties and actions.
Object-oriented programming calls properties by the name instance variables and actions are known as methods.
Ruby features single inheritance only, on purpose. But Ruby knows the concept of modules which are collections of methods
A block is a parameter passed into a method
use array whenever you need a list of elements in specific order
a hash is an unordered collection where data is organized into "key/value pairs"
attr_accesor method used to define attributes for instances of a class
=end

##Symbols##
"hello".methods # list of all possible methods
"hello".methods.count # 161
:hello.methods
:hello.methods.count # 77

###STRING METHODS###

"olessia potapova".length
"olessia potapova".reverse #good for sorting from highest/lowest
puts "olessia".upcase # OLESSIA
puts "POtapova".downcase # potapova

name = "Olessia"
name.downcase.reverse.upcase #AISSELO

print "whats your last name?"
last_name = gets.chomp # "gets" is input "chomp" removes extra ruby line
last_name2 = last_name.capitalize
last_name.capitalize!

puts "your last name is #{last_name}!"

### CONTROL FLOW IN RUBY ###

### IF/ELSE ###

if 5 < 7
  puts "7 is less than 5"
elsif 5 > 7
  puts "5 is greater than 7"
else
  puts "5 is 7"
end

 "this is a sentence".gsub("e"){|letter| letter.upcase}

 ### UNLESS ###

 hungry = false

 unless hungry
   puts "i'm programming"
 else
   puts "time for a snack"
end

problem = false
print "Good to go!" unless problem

### BOOLEAN OPERATORS ###

# && AND - true if both expression on either side are TRUE#
#left side must evaluate true, if false, doesn't even go to the second expression

1 < 2 && 2 < 3 # => true

# || OR - true if one of the expressions is true (inclusive or)
#if left side evalutes to true, the right side will not be tried
#bc it has already met the condition of 1 side to be true

true || false # => true

# ! NOT - makes true boolean operators false and vice-versa

!true # => false

(3 < 4 || false) && (false || true) # => true

!true && (!true || 100 != 5**2) # => false

true || !(true || false) # => true
