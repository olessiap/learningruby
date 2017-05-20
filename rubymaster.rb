=begin
1. In Ruby, everything is an object. Every bit of information and code can be given their own properties and actions.
2. Object-oriented programming calls properties by the name instance variables and actions are known as methods.
3. Ruby features single inheritance only, on purpose. But Ruby knows the concept of modules which are collections of methods
4. A block is a parameter passed into a method
5. use array whenever you need a list of elements in specific order
6. a hash is an unordered collection where data is organized into "key/value pairs"
7. attr_accesor method used to define attributes for instances of a class
8. in Boolean operators, ruby will only evaluate far enough to determine if expression if true or false.
  it will return whatever is returned by the last part of expression to get evauated
9. iterator - ruby method that repeatedly repeats a block of code
10. puts means put string
11. every method is being done by some object even if it doesn't have a dot in front of it.
12. arrays of arrays = multidimensional arrays
13. A hash is a collection of key-value pairs
14. index variable keeps track of which iteration the code is on, or increments until the condition is met
#["rock", "paper", "scissors"].index("paper")
15. objects are created by calling a constructor (special method associated with a class) .new
16. expression interpolation "#{expression}"
17. variable scope = section of code that recognizes it. Variable defined inside a method is only available inside that method.
18. local variable = defined within a method is 'local' to that method
19. return will stop an entire method, whereas
    break will just break out of a loop and continue with the rest of the code in the method.
20. sort! -- exclamation point permanently changes the array rather than making a new copy that is sorted
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

.start_with?("")
<< #(+) better for large scale string manipulations
.split(' ') #splits string into array
.gsub('old', 'new') #replaces string
	'RubyMonk'.gsub(/[aeiou]/, '1') #replaces all vowels with 1
.match(/ ./) #finds a substring next to a space (good for parsers)

=begin
print "whats your last name?"
last_name = gets.chomp # "gets" is input "chomp" removes extra ruby line
last_name2 = last_name.capitalize
last_name.capitalize!

puts "your last name is #{last_name}!"
=end

### CONTROL FLOW IN RUBY ###

### IF/ELSE ###
#typical setup up
if
elseif
else

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

#EXERCISE: replacing "s" strings with "th" #
#extra credit:
#1. additional if statement to re-prompt the user for input if they don't enter anything
#2. plan for words in which the letter "c" sounds like an "s"
#3. preserve the user's original capitalization

=begin
1. get user input (print statement)
2. downcase (to convert user input to lowercase so not to look for both S and s)
3. check for "s"
4. replace "s" with "th"
5. else statment if no S present
6. print out changed string to user
=end

=begin
print "whats your name hun?"
  user_input = gets.chomp
  user_input.downcase!

  if user_input.include? "s"
    user_input.gsub!(/s/, "th")
    puts "sup, #{user_input}!"
  else
    puts "no s in your name, congrats"
  end
=end

### LOOPS & ITERATORS ###
# .. include last number
# ... do not include last number

#WHILE LOOP# runs as long as condition is true

counter = 1
while counter < 5
  puts counter
  counter += 1
end

#UNTIL LOOP# runs as long as the condition is false
i = 0
until i == 6
  i += 1
end
puts i

#FOR LOOP# common to loop through numbers in a range
for num in 1...3 # see ..
  puts num
end

#LOOP METHOD (iterator)#

i = 0
loop do
  i += 1
  print "#{i}"
  break if i > 5
end
#=> 123456

loop do
  monk.meditate
  break if monk.nirvana?
end

puts
#exercise: print "Ruby!" string 30 times

counter = 0
loop do
  counter += 1 # so that counter starts at 1
  print "#{counter}" + " Ruby!"
  puts # so there's a space
  break if counter == 5
end

#NEXT##

#skip even numbers
for i in 1..7
  next if i % 2 == 0
  print i
end

#skip odd numbers
for i in 1..7
  next if i % 2 == 1
  print i
end

puts

puts

# .EACH (iterator) #

array = [1,2,3,4,5]

array.each do |x|
  x += 10
  print "#{x}"
end
# 11,12,13..

puts

odds = [1,3,5,7,9]

odds.each do |item|
    item *= 2
    puts "#{item}"
end

#.TIMES (iterator)#

2.times {print "yas"}


#exercise: REDACTED! change users input
=begin
1. get 2 user inputs. (sentence + word to redact)
2. divide user input into individual words
3. iterate through users text: split each word
  a. print out each word from the array
  b. print word REDACTED for the redacted word
optional:
  1. redact a word regardless of capital or not capital
  2. redact separate, multiple words
  3. make a new redacted string, save it as a variable
=end
=begin
print "type something here: "
text = gets.chomp
print "what word do you want to redact? "
redact = gets.chomp

words = text.split(" ")

words.each do |word|
  if word == redact
    print "REDACT"
  else
    print word + " "
  end
end
=end

# ARRAYS


flavor = 'vanilla'
[89.9, flavor, [true, false]] #  float, string, array

def doubleThis num
  numTimes2 = num * 2
  puts num.to_s + ' doubled is ' + numTimes2.to_s
end

#select even numbers
[1,2,3,4,5,6].select {|number| number % 2 == 0}
#[2,4,6]

#select words longer than 5 characters
names = ['rock', 'paper', 'scissors', 'lizard', 'spock']
names.select{|word| word.length > 5}

#delete element 5 from array
#[1,2,5,3,5]
[1,2,5,3,5].delete(5)


#delete all elements less than 4
#[1,2,3,4,5,6,7]

[1,2,3,4,5,6,7].delete_if{|i| i < 4}

#doubleThis 22

####### HASH #######

#hash = {
#  key1 => value1,
#  key2 => value2
#}

#OR

hash = Hash.new
hash["key1"] = "value1",
hash["key2"] = "value2"

#?
pets = Hash.new
pets["Pumpkin"] = "cat"

puts pets["Pumpkin"]

###iterate over Arrays

numbers = [1, 2, 3, 4, 5]
numbers.each {|element| puts element }

###iterate over HASHES

secret_identities = {
  "The Batman" => "Bruce Wayne",
  "Superman" => "Clark Kent",
  "Wonder Woman" => "Diana Prince",
  "Freakazoid" => "Dexter Douglas"
}

secret_identities.each do |hero, actor| puts "#{hero}: #{actor}"
end

### methods ###

#write a method that returns a string, adding to that string a person's name.

def phrase(name)
  result = "Goodnight, " + name
  return result
end

puts phrase("Olessia")

#exercise: Century from year
#Given a year, return the century it is in.
#The first century spans from the year 1 up to and including the year 100,
#the second - from the year 101 up to and including the year 200, etc.

def centuryFromYear(year)
  if year % 100 != 0
    return year/100 + 1
  else
    return year/100
  end
end

puts centuryFromYear(1876)

#OR

def centuryFromYear(year)
  (year - 1) / 100 + 1
end

puts centuryFromYear(1345)


#### VARIABLE SCROPE CONCEPT #17

important_var = "do not change me"

def do_some_stuff
    important_var = "we’re going to change this"
    important_var = important_var.capitalize
    puts(important_var)
end

puts(important_var)
do_some_stuff
puts(important_var)
