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

=begin
print "whats your last name?"
last_name = gets.chomp # "gets" is input "chomp" removes extra ruby line
last_name2 = last_name.capitalize
last_name.capitalize!

puts "your last name is #{last_name}!"
=end

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

#WHILE LOOP#

counter = 1
while counter < 11
  puts counter
  counter = counter + 1
end

#UNTIL LOOP#
i = 0
until i == 6
  i += 1
end
puts i

#FOR LOOP#
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

#exercise: print "Ruby!" string 30 times

counter = 0
loop do
  counter += 1
  print "Ruby!"
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

# .EACH (iterator) #

array = [1,2,3,4,5]

array.each do |x|
  x += 10
  print "#{x}"
end

odds = [1,3,5,7,9]

odds.each do |item|
    item *= 2
    puts "#{item}"
end

#.TIMES (iterator)#

10.times {print "yas"}


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
