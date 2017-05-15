
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

# PROBLEM 10.
#write a method that returns a string,
#adding to that string a person's name.

def phrase(name)
  result = "Goodnight, " + name
  return result
end

puts phrase("Olessia")

#PROBLEM 11: Century from year
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

#PROBLEM 12. Palindrome
#Given the string, check if it is a palindrome.

def checkPalindrome(inputString)
  if inputString.reverse == inputString
    return true
  else
    return false
  end
end

puts checkPalindrome('hannahs')

#OR

def checkPalindrome(inputString)
  return inputString.reverse == inputString
end

puts checkPalindrome('hannah')

#WRITE A WHILE LOOPS THAT PRINTS EVERY ODD NUMBER FROM THE VARIABLE ONE_TO_TEN.
#one_to_ten = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

one_to_ten = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

index = 0
while index < one_to_ten.length
  if one_to_ten[index] % 2 != 0
    puts(one_to_ten[index])
  end
  index += 1
end

#15
#WRITE A WHILE LOOP THAT WILL REMOVE EACH ITEM FROM THE END OF BEVERAGES
#AND PLACE IT AT THE BEGINNING OF FOODS.
#foods = ["bread", "cheese", "onions", "bananas"]
#beverages = ["juice", "water", "vodka", "coffee"]

foods = ["bread", "cheese", "onions", "bananas"]
beverages = ["juice", "water", "vodka", "coffee"]

while beverages.length > 0
  foods.unshift(beverages.pop)
end
puts foods

#16
#replace all languages in the following array to Ruby
#best_programming_languages = ["C++", "Go", "Ruby", "JavaScript", "Python"]

best_programming_languages = ["C++", "Go", "Ruby", "JavaScript", "Python"]
best_programming_languages[2] = 'Ruby'

puts best_programming_languages.inspect

index = 0

while index < best_programming_languages.length
  if best_programming_languages != 'Ruby'
    best_programming_languages[index] = 'Ruby'
  end
  index += 1
end

puts best_programming_languages.inspect

#18
#WRITE A WHILE LOOPS THAT UPDATES EVERY EVEN NUMBER IN ODDS BY SUBTRACTING 1 FROM IT.
#odds = [777, 14, 12, 39, 41, 10, 1, 355]

odds = [777, 14, 12, 39, 41, 10, 1, 355]

index = 0

while index < odds.length
  if odds[index] % 2 == 0
    odds[index] -= 1
  end
  index += 1
end

puts odds.inspect

#23
#PRINT OUT THE FOLLOWING SENTENCE WITH A HASH IN BETWEEN WORDS INSTEAD OF A SPACE:
#"Are you getting the hang of this?"

question = "are you getting the hang of this?"
arr = question.split
p(arr)
p(arr.join("-"))

#24
#return only the first 5 characters of any string

string = 'my name is abby and i like goats'
puts string.slice(0...5)

#25
#FINISH THE CODE BELOW TO RETURN THE ALPHABET ARRAY AS A SINGLE STRING,
#WITH EACH LETTER LOWERCASE. THE LETTERS SHOULD BE SEPARATED BY SEMICOLONS(;).
#alphabet = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]

alphabet = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
p alphabet.join(";").downcase

#26
#add the following strings together, separated by a space and capitalize the first word
#strings: 'see' 'you' 'soon'

def capitalize_join(arr)
  arr.join(" ").capitalize
end

sentence = capitalize_join(["see", "you", "soon"])
puts (sentence)


#27
#take the 3 strings and output a shuffled combination of all the letters with no spaces.
#strings: "Cat", "Dog", "Human"

def shuffled_letters(str)
    str.split("").shuffle
end


def combined_shuffled_letters(str1, str2, str3)
    shuffled_letters(str1) + shuffled_letters(str2) + shuffled_letters(str3)
end

puts combined_shuffled_letters("Cat", "Dog", "Human")

#28
#DEFINE A METHOD, CALLED HELLO_WORLD, THAT PRINTS OUT THE STRING "HELLO WORLD!".
#THEN, CALL THE METHOD TO MAKE IT PRINT.

def hello_world
  puts "HELLO WORLD!"
end

hello_world

#29
#DEFINE A METHOD, REMOVE_AS, THAT TAKES A STRING AS INPUT
#AND RETURNS AN ARRAY OF THE LETTERS IN THE STRING WITH EVERY LETTER "A" (ONLY LOWERCASE) REMOVED.
#THEN, CALL THE METHOD ON THE STRING "ARTISTIC AARDVARKS ARE ANNOYING".
#(HINT: USE THE STRING SPLIT, AND ARRAY DELETE METHODS).

def remove_as(str)
  str_array = str.split("")
  str_array.delete("A")
  str_array.delete(" ")
  str_array
end

puts remove_as("ARTISTIC AARDVARKS ARE ANNOYING")

#30
#print out only even numbers
#numbers: 1,3,5,6,8,11,12
#(check if the array is empty first, use return)

#check if array is empty
def even_numbers(arr)
  if arr.length == 0
    return "There are no numbers at all"
  end

  index = 0

  while index < arr.length
    if arr[index] % 2 == 0
      puts arr[index]
    end

    index += 1
  end
end
puts even_numbers([])
puts even_numbers([1,3,5,6,8,11,12])

#31
#print out the following numbers until 0 ([1, 3, 6, 2, 0, 14, 9, 7]) to print out all numbers until 0
#(use break, print "all done" at the end)

def print_until_zero(arr)
  ind = 0
  while ind < arr.length
    if arr[ind] == 0
      break
    else
      puts arr[ind]
     ind += 1
   end
  end

  puts "all done"
end

print_until_zero([1, 3, 6, 2, 0, 14, 9, 7])

#32
#WRITE A METHOD, PRINT_UNTIL_EMPTY, THAT WILL TAKE IN A STRING
#AND PRINT OUT EVERY LETTER UNTIL AN EMPTY SPACE IS ENCOUNTERED


def print_until_empty(str)
    ind = 0
    while ind < str.length
        if str[ind] == " "
            break #you can also use return here
        else
            puts(str[ind])
        end

        ind = ind + 1
    end
end

puts print_until_empty("hellloooo world")
