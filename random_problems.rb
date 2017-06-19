
#problem 1:
#Write a program which asks for a person's first name, then middle, then last.
#Finally, it should greet the person using their full name.
=begin
puts 'What is your first name? '
first_name = gets.chomp

puts 'What about your middle name?'
middle_name = gets.chomp

puts 'Last name now:'
last_name = gets.chomp

puts 'Hello ' + first_name + ' ' + middle_name + ' ' + last_name + '. It\'s so good to meet you, ' + first_name + '!'
=end


#PROBLEM 2:
#Write a program which asks for a person's favorite number.
#Have your program add one to the number, then suggest the result as a bigger and better favorite number.

=begin
puts 'Whats your favorite number hun?'
favorite_number = gets.chomp.to_i
new_number = favorite_number + 1
puts 'I think ' + new_number.to_s + ' is much better ;)' # need to convert new_number to string
=end


#PROBLEM 3
#Ask for first, middle, and last names individually, and then adds those lengths together

=begin

puts "first name: "
first_name = gets.chomp

puts 'middle name: '
middle_name = gets.chomp

puts 'last name: '
last_name = gets.chomp

full_name_spaces = first_name + ' ' + middle_name + ' ' + last_name + ' '

full_name_letters = first_name + middle_name + last_name

puts 'your full name is ' + full_name_spaces + '!'

puts 'Your full name is ' + full_name_letters.length.to_s + ' letters long'
=end


#PROBLEM 4
#"99 bottles of beer on the wall..."
#Write a program which prints out the lyrics to that beloved classic, that field-trip favorite:
#"99 Bottles of Beer on the Wall."
#TODO: how to replace 0 with "no more"**

=begin
beer_number = 5

  while beer_number >= 1
    # beer_number > 1 type first sentence, second beer_number - 1
    puts beer_number.to_s + ' bottles of beer on the wall, ' + beer_number.to_s + ' bottles of beer.'
    beer_number = beer_number.to_i - 1
    puts 'Take one down and pass it around, ' + beer_number.to_s + ' bottles of beer on the wall.'
  end

puts 'No more bottles of beer on the wall, no more bottles of beer.'
puts 'Go to the store and buy some more, 99 bottles of beer on the wall.'
=end


#PROBLEM 5: Deaf Grandma program

#Whatever you say to grandma, she should respond with  HUH?!  SPEAK UP, SONNY!, unless you shout it (type in all capitals).
#If you shout, she can hear you and yells back, NO, NOT SINCE 1938!
#To make your program really believable, have grandma shout a different year each time;
#maybe any year at random between 1930 and 1950.
#You can't stop talking to grandma until you shout BYE.
#Hint: Don't forget about  chomp!  'BYE' with an Enter is not the same as 'BYE' without one!
#Hint 2: Try to think about what parts of your program should happen over and over again.
#All of those should be in your while loop.
#Extend your Deaf Grandma program: What if grandma doesn't want you to leave?
#When you shout BYE, she could pretend not to hear you.
#Change your previous program so that you have to shout BYE three times in a row.
#Make sure to test your program: if you shout BYE three times, but not in a row, you should still be talking to grandma.

=begin
puts 'hi honey'
user_answer = ()
bye = 0
while bye < 3
  user_answer = gets.chomp
  if user_answer == 'BYE'
      puts 'ignoring you'
  bye = (bye + 1)
  elsif user_answer == user_answer.upcase
      puts 'NO, NOT SINCE ' + (rand(1930..1950)).to_s + '!'
  else
      puts 'HUH?! SPEAK UP, SONNY!'
  end
end
=end


#PROBLEM 6: Leap Years
#Write a program which will ask for a starting year and an ending year,
#and then puts all of the leap years between them (and including them, if they are also leap years).
#Leap years are years divisible by four (like 1984 and 2004).
#However, years divisible by 100 are not leap years (such as 1800 and 1900) unless they are divisible by 400
#(like 1600 and 2000, which were in fact leap years).
#(Yes, it's all pretty confusing, but not as confusing as having July in the middle of the winter,
#which is what would eventually happen.)
#** to do: count how many leap years

=begin

puts 'starting year: '
starting_year = gets.chomp.to_i
puts 'ending year: '
ending_year = gets.chomp.to_i

difference = ending_year - starting_year

puts 'There are ' + difference.to_s + ' years between these 2 years'
puts 'Of these ' + difference.to_s + ' years, * are leap'

(starting_year..ending_year).each do |year|
  next if year % 4 != 0
  next if year % 100 == 0 && year % 400 != 0
  puts year
end
=end

#PROBLEM 7: Alphabetize user input
#write a program which asks us to type in as many words as we want
#(one word per line, continuing until we just press Enter on an empty line),
#and which then repeats the words back to us in alphabetical order
#Hint: There's a lovely array method whcich will give you a sorted version of an array:  sort. Use it!

=begin
puts 'type in any word here please: '
x = 0
word = 'word1'
dictionary = []

while word != ''
  word = gets.chomp
  dictionary[x] = word
  x = x + 1
end

puts 'in alphabetical order: '
puts dictionary.sort
=end

#PROBLEM 8: Happy Birthday!
#Ask what year a person was born in, then the month, then the day.
#Figure out how old they are and
#give them a big SPANK! for each birthday they have had.

=begin
puts 'What year were you born? ex: 1990'
year = gets.chomp
puts 'What month were you born? ex: 03'
month = gets.chomp
puts 'What day were you born? ex: 31'
day = gets.chomp
=end


#PROBLEM 9: FAMILY three
#Set up a hash with your family members
#print out each family member name and their relation to you

my_family = {'Olga' => 'mom',
  'Victor' => 'dad',
  'Ivan' => 'brother'
}

my_family.each { |x, y| puts "#{x}: #{y}"}

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


################################################################################
##########################BUILDING A HISTOGRAM #################################
################################################################################
#a program that takes a user's input, then builds a hash from that input. 
#Each key in the hash will be a word from the user; 
#each value will be the number of times that word occurs. 
#ex: the rain in the forest >> the 2, rain 1, in 1, forest 1

#1. get user input
#2. save input into variable text
#3. turn string into an array
#4. count words using a hash
    #create a new hash with default value 0
#5. iterate over the array, add each word to the hash
#6. sort the hash
    #from highest to lowest
#7. print out the word/frequency combos 
    
text = "the rain the snow"

words = text.split(" ")
frequencies = Hash.new(0)
words.each { |word| frequencies[word] += 1 }
frequencies = frequencies.sort_by {|a, b| b }
frequencies.reverse!
frequencies.each { |word, frequency| puts word + " " + frequency.to_s }

=begin
exercise 10: CRUD
use Ruby hashes and symbols to construct a program that 
displays, adds, updates and removes movie ratings
1. create a hash to hold movie and ratings
2. print out 4 lines of directions
3. prompt user for input (choice)
4. set up the choice case statement
5. build out each when statement
6 add:
  6a ask for title, rating
  6b add values to movies hash
  6c convert key to symbol, value to integer
  6d add if/else statement that checks if the movie is already in the hash
  6e puts confirmation that new movie is added
7 update an existing movie in the hash
  7a ask for movie title
  7b store it in title
  7c if the movie nil => error 
  7d else update movie hash
  7e ask for new rating
  7f set movie rating to new value
  7g convert value to integer
8. display all
  8a print out each key/value pair
9. delete
  9a ask which one to delete
  9b if title exists => delete it
  9c if not => error
=end

movies = { 
  Titanic: 1, 
  Jaws: 3,
  SuperBad: 10
}

puts "add to add a movie"
puts "update to update an existing movie"
puts "display to show all current movies"
puts "delete to remove a movie from the list"




#Write a while loop that takes input from the user, performs an action, 
#and only stops when the user types "STOP". Each loop can get info from the user.

# puts "hello"
# user_input = gets.chomp

# unless user_input == "STOP"
#   puts "tell me something about yourself"
# end

# loop do
#   puts "tell me something about yourself"
#   user_input = gets.chomp
#   break if user_input == "STOP"
# end


# "laboratory"
# "experiment"
# "Pans Labyrinth"
# "elaborate"
# "polar bear


arr = ["laboratory", "experiment", "Pans Labyrinth", "elaborate", "polar bear"]

arr.each/word/match("lab")

