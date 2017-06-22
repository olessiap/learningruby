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
=end

##Symbols##
"hello".methods # list of all possible methods
"hello".methods.count # 161
:hello.methods
:hello.methods.count # 77

########################
#### STRING METHODS ####
########################

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


################################################################################
##########################      CONTROL FLOW          ##########################
################################################################################

######################
#####  IF/ELSE   #####
######################

#typical setup up
if
elseif
else

######################
### SIMPLE IF/ELSE ####
#TERNARY COND. EXPSSION
######################

#Syntax
boolean ? Do this if true: Do this if false

#example
puts 3 < 4 ? "3 is less than 4" : "3 is not less than 4"

#example
def hello(name)
  name ? "hello #{name}" : "Hello ... World"
end

puts hello("Olessia")


#example
if 5 < 7
  puts "7 is less than 5"
elsif 5 > 7
  puts "5 is greater than 7"
else
  puts "5 is 7"
end

######################
#####  SIMPLE IF #####
######################
#Syntax
action if boolean

puts "its true" if true

######################
#####  UNLESS  #######
######################

 hungry = false

 unless hungry
   puts "i'm programming"
 else
   puts "time for a snack"
end

problem = false
print "Good to go!" unless problem

######################
###SIMPLE UNLESS #####
######################
#Syntax
action unless boolean

puts "Im running" unless true

######################
## CASE STATEMENT  ###
######################
#like if/else
#syntax: (then action is optional)
case casevariable then action
when "value1" then action
when "value2"
else
end


#exercise 10: CRUD in random_problems.rb
#use Ruby hashes and symbols to construct a program that
#adds, updates, displays, and removes movie ratings


######################
##BOOLEAN OPERATORS ##
######################

########
##AND###
########
#true if both expression on either side are TRUE#
#left side must evaluate true, if false, doesn't even go to the second expression

1 < 2 && 2 < 3 # => true

########
###OR###
########
#true if one of the expressions is true (inclusive or)
#if left side evalutes to true, the right side will not be tried
#bc it has already met the condition of 1 side to be true

true || false # => true


########
##NOT###
########
#- makes true boolean operators false and vice-versa

!true # => false

(3 < 4 || false) && (false || true) # => true

!true && (!true || 100 != 5**2) # => false

true || !(true || false) # => true

#######################
########## ||= #######
#CONDITIONAL ASSIGNMENT
#######################
#like =
#assigns a variable if it hasn't been assigned already

#good for using instead of checking if an array is empty
#instead of:
array = [] if array.nil?
#better to use conditional assignment
array ||= []



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

################################################################################
##########################  LOOPS & ITERATORS       ############################
################################################################################


# .. include last number
# ... do not include last number


######################
##### WHILE LOOP #####
######################
#runs as long as condition is true
# returns nil

counter = 1
while counter < 5
  puts counter
  counter += 1
end

######################
##### UNTIL LOOP #####
######################
#runs as long as the condition is false
i = 0
until i == 6
  i += 1
end
puts i

######################
###### FOR LOOP ######
######################
#common to loop through numbers in a range
# or a collection of elements
#returns a collection of elements

for num in 1...3 # see ..
  puts num
end

######################
####LOOP METHOD ######
######################
#loop gets executed 1 time, before conditional check
#to see if the rest should be executed
#good for asking something multiple times until a condition is met (yes/no input)

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

######################
########NEXT #########
######################

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


######################
###.EACH (iterator)###
######################


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


######################
###.times (iterator)##
######################

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

################################################################################
###############################  ARRAYS      ###################################
################################################################################


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

#.product => joins 2 arrays
arr = ["b", "a"]
arr = arr.product(Array(1..3))
#=> ["b", 1], ["b", 2,], ["b", 3,], ["a", 1], ["a", 2], ["a", 3]

#.index find what index a particular element is at
arr = [15, 7, 18, 5, 12, 8, 5, 1]
arr.index(5) #=> 3

#what element is at a particular index
arr[5] # => 8



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


#### VARIABLE SCOPE CONCEPT #17

important_var = "do not change me"

def do_some_stuff
    important_var = "we’re going to change this"
    important_var = important_var.capitalize
    puts(important_var)
end

puts(important_var)
do_some_stuff
puts(important_var)


################################################################################
##########################        METHODS           ############################
################################################################################


#MULTIPLE ARGUMENTS *
def what_up(greeting, *bros)
  bros.each { |bro| puts "#{greeting}, #{bro}!" }
end

p what_up("What up", "Justin", "Ben", "Kevin Sorbo")

# method that capitalizes a word
def capitalize(string)
  puts "#{string[0].upcase}#{string[1..-1]}" #[1..-1] >> prints the rest of the word normally
end

#reverse sort
fruits = ["orange", "apple", "banana", "pear", "grapes"]
fruits.sort! { |x, y| -(x <=> y) }

############## a method for oredering array elements###################
#1. define  alphabetize method

def alphabetize(arr, rev=false) #2nd paramenter defaults to false if not given
  arr.sort!
  if rev
    return arr.reverse!
  else
    return arr.sort!
  end
end

text = ["a", "z", "b"]

puts alphabetize(text, true)



################################################################################
##########################       HASHES          ###############################
################################################################################
#KEY VALUE PAIRS
#KEYS UNIQUE
#VALUES CAN REPEAT

###CREATING A HASH####

#hash literal notation
new_hash = {"one" => 1}

#hash constructor notation
new_hash = Hash.new

##only print out the values##
member = {"First name" => "Olessia",
  "Last name" => "Potapova",
  "Nationality" => "American(russian)",
  "age" => "26"
}

member.each do |key, value|
  puts value, member[value]
end

## set default to a custom value
my_hash = Hash.new("default value here")

##accesing a value in a hash
my_hash[:key]
#or
my_hash.fetch("key")


##accessing a value based on specific criteria
#.select
grades = { David: 100,
  Whirly: 92,
  Joel: 95
}

grades.select{|name, grade| grade > 96} # :David => 100
grades.select{|k, v| k == :Whirly } # :Whirly=>92


#accessing just keys or just values
#.each_key |k|
#.each_value |v|
grades.each_key { |k| puts k, " " } # David, Whirly, Joel

#adding keys and values to a hash
grades[:Hoimes]  = 91

#deleting from a hash
grades.delete(:Hoimes)

##Optional hash parameters##
def greeting(name, options ={})
   if options.empty?
    puts "Hi, my name is #{name}"
  else
    puts "Hi, my name is #{name} and I'm #{options[:age]}" +
    " years old and I live in #{options[:city]}."
  end
end

greeting ("Bob")
greeting ("Bob", {age: 62, city: "SF"})
#or
gretting("Bob", age: 62. city: "SF")


#Given a hash of family members, with keys as the title
#and an array of names as the values,
#use Ruby's built-in select method to gather only immediate family members' names
#into a new array.


family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

immideate = family.select do |k, v |
   k == :sisters || k == :brothers
 end

arr = immideate.values.flatten

arr

################################################################################
##########################  :::     SYMBOLS :::     ############################
################################################################################
# : NOT A STRING
# : MORE LIKE A NAME
# multiple different strings can have the same value
# symbol has one copy only(symbol can't be changed after creation)
# used as hash keys or for referencing methods
# symbol keys are faster in hash look up then string keys

#symbol syntax
my_first_symbol = :yolo #=>:my_first_symbol

second_symbol_hash = {
  one: 1,
  two: 2,
  three: "three"
}

#OR
owl = {
  :type => "Bird",
  :diet => "Carnivore",
  :life_span => "10 years"

}

#convert strings to symbols

strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]

symbols = []

strings.each do |s|
  symbols.push(s.to_sym)
end


#symbols are faster than strings in hash look up

string_AZ = Hash[("a".."z").to_a.zip((1..26).to_a)]
symbol_AZ = Hash[(:a..:z).to_a.zip((1..26).to_a)]

string_time = Benchmark.realtime do
  100_000.times { string_AZ["r"] }
end

symbol_time = Benchmark.realtime do
  100_000.times { symbol_AZ[:r] }
end

puts "String time: #{string_time} seconds."
puts "Symbol time: #{symbol_time} seconds."



################################################################################
###############################  ENUMERABLES  ##################################
################################################################################

# .each - doesn't alter
# .each_with_index -
# .each_index - alters
# .map - makes new arr
# .each_with_index.map
# .select -  returns == key/value pairs
# .inject - makes arr into a single value, like sum
  #takes initial value as an argument
  # 2 arguments

#.each_with_index
#print out every other element in the array
["cat", "dog", "pig", "goat"].each_with_index do |animal, idx|
  puts animal if idx % 2 == 0 #every third is idx % 3 == 2
end

#.map
#list -100 to 0
(0..100).map{|x| -x}

#COMBINED .each_with_index + .map
arr = ["a", "b", "c"].each_with_index.map do |letter, idx|
  "#{letter.capitalize} is in position #{idx+1} of the alphabet"
end

puts arr.join("\n")

#.select
puts [1,'a', 2, 'b', 5].select { |x| x.class==String}.join(", ") #a,b

#.inject
val = [1,3,5,7].inject(0) do |total, num|
   total += num
end
puts val   #=> 16

# use .INJECT to convert an array into a hash
data_arr = [['dog', 'Fido'], ['cat', 'Whiskers'], ['fish', 'Fluffy']]

data_hash = data_arr.inject({}) do |hsh, v|
  hsh[v[0]] = v[1]
  hsh
end

################################################################################
##################################  BLOCKS  ####################################
################################################################################

#.times
#.collect - applies expression in the block to every element in an array
#yield - switches code from method to block

#a block that checks for integers in an array
odds_n_ends = [:weezard, 42, "Trady Blix", 3, true, 19, 12.345]
int = odds_n_ends.select { |x| x.is_a? Integer }
puts int


#pass in a number to a block
def take_block(number, &block)
  block.call(number)
end

number = 42
take_block(number) do |num|
  puts "block being called in the method #{num}"
end

######################
########.YIELD()######
######################
#yield - switches code from method to block

def yield_name(name)
  puts "In the method! Let's yield."
  yield("Kim")
  puts "In between the yields!"
  yield(name)
  puts "Block complete! Back in the method."
end

yield_name("Eric") { |n| puts "My name is #{n}." }

#In the method! Let's yield.
#My name is Kim.
#In between the yields!
#My name is Eric.
#Block complete! Back in the method.


################################################################################
##################################  PROCS ######################################
################################################################################
#Saved block
#good for keeping code DRY
#.call - calls proc directly
# & - convert symbols to procs
# &procaname when passing to method - converts to block
#weird edge cases with return, avoid using if possible
#stops after first return


#example
multiples_of_3 = Proc.new do |n|
  n % 3 == 0
end

(1..100).to_a.select(&multiples_of_3) #also .collect or .map


# & - convert symbols to procs
#By mapping &:to_i over every element of strings,
#we turned each string into an integer!
strings = ["1", "2", "3"]
nums = strings.map(&:to_i)
# ==> [1, 2, 3]

#use proc to select all ages under 100
ages = [23, 101, 7, 104, 11, 94, 100, 121, 101, 70, 44]

under_100 = Proc.new { |x| x < 100}
youngsters = ages.select(&under_100)


################################################################################
##############################    LAMBDA     ###################################
################################################################################
#same as a proc but different syntax &
#checks the number of arguments passed to it
#when a lambda returns, it passes control back to the calling method;
#when a proc returns, it does so immediately, without going back to the calling
  #method
# returns last line it evaluates
# &lambdaname when passing to method - converts to block

#SYNTAX
lambda { |param| block }

short = ->(a, b) { a + b }
puts short.call(2, 3)

long = lambda { |a, b| a + b }
puts long.call(2, 3)


#simple lambda
l = lambda { "Do or do not" }
puts l.call

# turn array of strings into array of symbols
strings = ["leonardo", "donatello", "raphael", "michaelangelo"]

symbolize = lambda { |x| x.to_sym }

symbols = strings.collect(&symbolize)


#difference between proc and lambda
def batman_ironman_proc
  victor = Proc.new { return "Batman will win"}
  victor.call
  "Ironman will win"
end

puts batman_ironman_proc
# => Batman will win
#returns immediately, without going back to the batman_ironman_proc method

def batman_ironman_lambda
  victor = lambda{ return "Batman will win" }
  victor.call
  "Ironman will win"
end

puts batman_ironman_lambda
# => Ironman will win
#goes back into the method after being called,
#so the method returns the last code it evaluates


# a lambda that checks if each element in an array is a symbol
my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages]

symbol_filter = lambda { |x| x.is_a? Symbol }
symbols = my_array.select(&symbol_filter)


################################################################################
##############################   CLASSES     ###################################
################################################################################

#syntax example
class Language
  def initialize(name, creator)
    @name = name
    @creator = creator
  end

  def description
    puts "I'm #{@name} and I was created by #{@creator}!"
  end
end

ruby = Language.new("Ruby", "Yukihiro Matsumoto")
python = Language.new("Python", "Guido van Rossum")
javascript = Language.new("JavaScript", "Brendan Eich")

ruby.description
python.description
javascript.description

#inheritance example
class ApplicationError
	def display_error
		puts "error! Error!"
	end
end

class SuperBadError < ApplicationError #inherits display_error method from ApplicationError
end
err = SuperBadError.new
err.display_error
###outputs: error! Error

#OVERRIDE Example: Dragon fight method overrides superclass Creaure fight method
Class Creature
	def initialize(name)
		@name = name
	end

	def fight
		return "Punch!"
	end
end

class Dragon < Creature
	def fight
		return "FIRE!!"
	end
end

##SUPER: KEYWORD WILL OVERRIDE THE OVERIDE

class DerivedClass < Base
  def some_method
    super(optional args)
      # Some stuff
    end
  end
end

################################################################################
##############################   EXCEPTIONS    #################################
################################################################################
#http://ruby.bastardsbook.com/chapters/exception-handling/
#begin - start of exception-handling block
#rescue -#code that executes if an exception is raised
	# Rescues all errors, and puts the exception object in `e`
		rescue => e
		# Rescues only ZeroDivisionError and puts the exception object in `e`
		rescue ZeroDivisionError => e
#else - THE code (if no exceptions)
#ensure - executes regardless of errors/exceptions
#retry - redirects program to the begin statement (helpful in a loop)

#raise - triggering your own exception to be caught

begin
	# raises an ArgumentError with the message "you messed up!"
	raise ArgumentError.new("You messed up!")
rescue ArgumentError => e
	puts e.message
end
# Outputs: You messed up!


#basic example
begin
  # Any exceptions in here...
  1/0
rescue
  # ...will cause this code to run
  puts "Got an exception, but I'm responding intelligently!"
  do_something_intelligent()
end

# This program does not crash.
# Outputs: "Got an exception, but I'm responding intelligently!"


# advanced example:
values = [42, 'a', 'r', 9, 5, 10022, 8.7, "sharon", "Libya", "Mars", "12", 98, rand + rand, {:dog=>'cat'}, 100, nil, 200.0000, Object, 680, 3.14, "Steve", 78, "Argo"].shuffle

while values.length > 0
  a = values.pop
  b = values.pop

  begin
     a + b
  rescue
     puts "Could not add variables a (#{a.class}) and b (#{b.class})"
  else
     puts "a + b is #{a + b}"
  end

end

## "Could not add variables a (String) and (Fixnum)"
## a + b is rsharon
## etc

#begin/rescue block with user_input
while 1
   puts "Enter a number>>"
   begin
     num = Kernel.gets.match(/\d+/)[0]
   rescue
     puts "Erroneous input! Try again..."
   else
     puts "#{num} + 1 is: #{num.to_i+1}"
   end
end
#output
# ~ :)  ruby extest.rb
# Enter a number>>
# 8
# 8 + 1 is: 9
# Enter a number>>
# eight
# Erroneous input! Try again...
# Enter a number>>


#RETRY openinng url based on end date
require 'open-uri'
remote_base_url = "http://en.wikipedia.org/wiki"

[1900, 1910, 'xj3490', 2000].each do |yr|

 retries = 3

 begin
   url = "#{remote_base_url}/#{yr}"
   puts "Getting page #{url}"
   rpage = open(url)
 rescue StandardError=>e
   puts "\tError: #{e}"
   if retries > 0
       puts "\tTrying #{retries} more times"
       retries -= 1
       sleep 1
       retry
   else
       puts "\t\tCan't get #{yr}, so moving on"
   end
 else
   puts "\tGot page for #{yr}"
 ensure
   puts "Ensure branch; sleeping"
   sleep 1

 end
end


################################################################################
###################################   I/O FILES ################################
################################################################################
##################
#CREATING A File
##################

aFile = File.new("testfile")

#opening a file
aFile = File.new("testfile", "r") #file object. Open a tesfile for reading with an r
# ... process the File
aFile.close
#returns new file object

#OR with block, passes a newly opened File as a parameter, after block exits, closes file
File.open("testfile", "r") do |aFile|
# ... process the File
end

########################
#READING FILES ITERATORS
########################

aFile.each_line { |line| puts "Got #{line.dump}" }
#Got "This is line one\n"
#Got "This is line two\n"

aFile.each_line("e") do |line| #E is a line separator
	puts "got #{ line.dump }"
end
# Got "This is line"
# Got " one"
# Got "\nThis is line"
# Got " two\nThis is line"

IO.foreach("testfile") { |line| puts line}
# This is line one
# This is line two
# This is line three

#example: simple
#!/file path

fname = "alllines.rb"
File.readlines(fname).each do |line|
	puts line
end


########################
#WRITING FILES ITERATORS
########################
# objects passed to puts/print are converted to a string by calling .to_s method
# and returns a valid string

#example: write to file
f = File.open('output.txt', 'w') #open txt file in WRITE mode
f.puts "The Ruby tutorial"
f.close
#cat output.txt ==> The Ruby tutorial

#example: if theres a block after open method, Ruby passes the opened stream
	#to this block, file closes at the end of block
File.open('langs', 'w') do |f|
  	f.puts "Ruby"
    f.write "Java\n"
    f << "Python\n"

end

#example: create new file, rename it
puts File.exists? 'tempfile' #t/f

f = File.new 'tempfile', 'w'
puts File.mtime 'tempfile' #
puts f.size

File.rename 'tempfile', 'tempfile2'

f.close


################################################################################
###################################   RECURSION ################################
################################################################################

def fact(n)
  return 1 if n <= 1
  n * fact(n-1)
end
fact(4)
#=> 4 * fact(3)
#=> 4 * ( 3 * fact(2) )
#=> 4 * ( 3 * ( 2 * fact(1) ) )
#=> 4 * ( 3 * ( 2 * 1 ) )
#=> 4 * ( 3 * 2 )
#=> 4 * 6
#=> 24

###############
#Tail recursion
##############
def fact(n, acc=1)
  return acc if n <= 1
  fact(n-1, n*acc)
end

fact(4)
#=> fact(4, 1)
#=> fact(3, 4)
#=> fact(2, 12)
#=> fact(1, 24)
#=> 24
