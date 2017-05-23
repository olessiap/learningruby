################
puts "problem 1"
################
#print out 1-10
ind = 1
while ind <= 10
  puts ind
  ind += 1
end


################
puts "problem 2"
################
#exercise: print "Ruby!" string 30 times using loop
ind = 1
while ind <= 30
  puts ind.to_s + " Ruby!"
  ind += 1
end


################
puts "problem 3"
################
#exercise: print 1-5 using while
ind = 1
while ind <= 5
  puts ind
  ind += 1
end

################
puts "problem 4"
################
#write a method that returns a string,
#adding to that string a person's name.

def phrase(name)
  result = "Goodnight, " + name
  return result
end

puts phrase("Olessia")


################
puts "problem 5"
################
#Century from year
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


################
puts "problem 6"
################
#Palindrome
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


################
puts "problem 7"
################
#Given an array of integers,
#find the pair of adjacent elements that has the largest product
#and return that product.

# def array_of_integers(arr)
#   ind = 0
#   while ind < arr.length
#     if arr[ind] < arr[ind] + 1
#
#     end
#     ind += 1
#   end
# end
#
# puts array_of_integers([1,2,3,4])



################
puts "problem 8"
################
#evaluate the expression 12 ** 2, and print the result 3 times

result = 12 ** 2
puts result.to_s * 3


################
puts "problem 9"
################
#print out 1-4

ind = 1
while ind <=4
  puts ind
  ind += 1
end


################
puts "problem 10"
################
#FINISH THE CODE BELOW WITH A WHILE LOOP THAT WILL
#INCREMENT THE VARIABLE NUM_DOGS BY 2
#AND DECREMENT THE VARIABLE NUM_CATS BY 1
#UNTIL NUM_DOGS IS GREATER THAN NUM_CATS.
#num_dogs = 1
#num_cats = 186

num_dogs = 1
num_cats = 186

while num_dogs < num_cats
  num_dogs = num_dogs + 1
  num_cats = num_cats - 2
end


################
puts "problem 11"
################
#print out all numbers divisible by 3 from 0 - 100

num = (1..101).to_a

ind = 0
while ind < num.length
  if num[ind] % 3 == 0
    puts num[ind]
  end
  ind +=1
end


################
puts "problem 12"
################
#HOW WOULD YOU DETERMINE THE LENGTH OF ARRAY ["A", "B", "C"]?
array = ["A", "B", "C"]
puts array.length


################
puts "problem 13"
################
#FIND THE LAST ITEM IN ARRAY of VEGETABLES USING .LENGTH.


################
puts "problem 14"
################
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

################
puts "problem 15"
################
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


################
puts "problem 16"
################
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


################
puts "problem 17"
################
#CHANGE THE THIRD ITEM IN THE COUNTRIES ARRAY TO "COLOMBIA".
#countries = ["Denmark", "Kenya", "Australia", "USA", "Bhutan"]
countries = ["Denmark", "Kenya", "Australia", "USA", "Bhutan"]

countries[2] = "COLOMBIA"

puts countries.inspect


################
puts "problem 18"
################
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

################
puts "problem 19"
################
#find if the languages array contains Korean
#languages = ["German", "English", "Arabic", "Hungarian", "Spanish", "Japanese"]
languages = ["German", "Korean", "Arabic", "Hungarian", "Spanish", "Japanese"]

languages.include?("Korean")


################
puts "problem 20"
################
#COMPLETE THE CODE BELOW TO PRINT OUT EACH LANGUAGE IN THE LANGUAGES ARRAY,
#CAPITALIZED, IN ALPHABETICAL ORDER.
#languages = ["german", "english", "arabic", "hungarian", "spanish", "japanese"]
languages = ["german", "english", "arabic", "hungarian", "spanish", "japanese"]

languages = languages.sort

ind = 0
while ind < languages.length
  puts languages[ind].capitalize
  ind += 1
end


################
puts "problem 21"
################
#HOW CAN WE ACCESS THE FIFTH CHARACTER IN THE STRING "DESTINATION: DEV"?

puts "DESTINATION: DEV"[4]


################
puts "problem 22"
################
#HOW WOULD YOU SEPARATE THE STRING "PROGRAMMING IS FUN" INTO AN ARRAY OF WORDS?

og_string = "PROGRAMMING IS FUN"
split_string = og_string.split
puts split_string


################
puts "problem 23"
################
#PRINT OUT THE FOLLOWING SENTENCE WITH A HASH IN BETWEEN WORDS INSTEAD OF A SPACE:
#"Are you getting the hang of this?"

question = "are you getting the hang of this?"
arr = question.split
p(arr)
p(arr.join("-"))



################
puts "problem 24"
################
#return only the first 5 characters of any string

string = 'my name is abby and i like goats'
puts string.slice(0...5)


################
puts "problem 25"
################
#FINISH THE CODE BELOW TO RETURN THE ALPHABET ARRAY AS A SINGLE STRING,
#WITH EACH LETTER LOWERCASE. THE LETTERS SHOULD BE SEPARATED BY SEMICOLONS(;).
#alphabet = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]

alphabet = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
p alphabet.join(";").downcase


################
puts "problem 26"
################
#add the following strings together, separated by a space and capitalize the first word
#strings: 'see' 'you' 'soon'

def capitalize_join(arr)
  arr.join(" ").capitalize
end

sentence = capitalize_join(["see", "you", "soon"])
puts (sentence)


################
puts "problem 27"
################
#take the 3 strings and output a shuffled combination of all the letters with no spaces.
#strings: "Cat", "Dog", "Human"

def shuffled_letters(str)
    str.split("").shuffle
end


def combined_shuffled_letters(str1, str2, str3)
    shuffled_letters(str1) + shuffled_letters(str2) + shuffled_letters(str3)
end

puts combined_shuffled_letters("Cat", "Dog", "Human")


################
puts "problem 28"
################
#DEFINE A METHOD, CALLED HELLO_WORLD, THAT PRINTS OUT THE STRING "HELLO WORLD!".
#THEN, CALL THE METHOD TO MAKE IT PRINT.

def hello_world
  puts "HELLO WORLD!"
end

hello_world


################
puts "problem 29"
################
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


################
puts "problem 30"
################
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



################
puts "problem 31"
################
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


################
puts "problem 32"
################
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


################
puts "problem 33"
################
#select even numbers
[1,2,3,4,5,6].select {|number| number % 2 == 0}
#[2,4,6]



################
puts "problem 34"
################
#select words longer than 5 characters
names = ['rock', 'paper', 'scissors', 'lizard', 'spock']
names.select{|word| word.length > 5}


################
puts "problem 35"
################
#delete element 5 from array
#[1,2,5,3,5]
[1,2,5,3,5].delete(5)


################
puts "problem 36"
################
#delete all elements less than 4
#[1,2,3,4,5,6,7]

[1,2,3,4,5,6,7].delete_if{|i| i < 4}


################
puts "problem 37"
################
#Copy the values less than 4 in the array stored in the source variable
#into the array in the destination variable
def array_copy(source)
  destination = []
  # your code
  return destination
end


################
puts "problem 38"
################
#white a method that that returns numbers that are less than 4
#use a for loop
#[1,2,3,6,5,4,8,3,6,1,0]

#for loop solution
def array_copy(source)
  destination = []
  for i in source
    if i < 4
      destination << i
    end
  end
  return destination
end

puts array_copy([1,2,3,6,5,4,8,3,6,1,0])

# each loop solution

def array_copy(source)
  destination = []
  source.each do |i|
    if i < 4
      destination << i
    end
  end
  return destination
end

puts array_copy([1,2,3,6,5,4,8,3,6,1,0])




################################################################################
################################################################################
puts "~~~~~DD PREP: 9 PRACTICE PROBLEMS~~~~" #####

################
puts "problem 39"
################
=begin
Problem 0: Hello... World?
Write a method, hello, that expects a string as input. The method should return the string
"Hello <INPUT STRING>!". If the input is nil, the method should return the string
"Hello... World?".

Example:
hello("Student") => "Hello Student!"
hello(nil) => "Hello... World?"

=end

def hello(name)
  if name #name has some value
    "Hello " + name + "!" #if puts then return value is nil which is wrong
  else # name is empty
    "Hello... World?"
  end
end

#OR

def hello(name)
	name ? "Hello #{name}!" : "Hello... World?"
end


#Tests
puts(hello("Friend") == "Hello Friend!")
puts(hello("Doug") == "Hello Doug!")
puts(hello("Insert Name") == "Hello Insert Name!")
puts(hello("Jane Smith") == "Hello Jane Smith!")
puts(hello(nil) == "Hello... World?")


################
puts "problem 40"
################
=begin
Problem 1: Sum to Num

Write a method, sum_to_num, that takes a positive integer as an argument and returns the sum
of every positive integer up to and including that number.

Example:

sum_to_num(3) == 6 ----> 1 + 2 + 3 = 6
=end

def sum_to_num(num)
  sum = 0
  current = 1

  while current <= num
    sum += current
    current += 1
  end
  sum
end

#OR

def sum_to_num(num)
  (1..num).reduce(:+)
end


#OR(mine)

def sum_to_num(num)
  arr = (1..num).to_a
  sum = arr.inject(0, :+) # 0 base case needed otherwise nil will be returned on empty arrays
end

#Tests
puts(sum_to_num(1) == 1)
puts(sum_to_num(2) == 3)
puts(sum_to_num(3) == 6)
puts(sum_to_num(17) == 153)
puts(sum_to_num(1346) == 906531)
puts(sum_to_num(487633) == 118893215161)



################
puts "problem 41"
################

# Problem 2: Fizz Buzz
#
# FizzBuzz is a classic problem in programming. We want you to
# create a method called fizzbuzz that takes one argument,
# which you can assume is a positive integer. If the number
# passed in is divisible by 3, the method should return the
# string "fizz".If the number is divisible by 5, the method should return the
# string "buzz". If the number is divisible by both 3 and 5, the
# method should return the string "fizzbuzz". Finally, if the
# number is not divisible by either number it should return the
# number. We've included the definition of the method for you,
# along with some tests. Fill in the code, and make sure all of
# the tests return true!


def fizzbuzz(num)
  if num % 15 == 0
    return "fizzbuzz"
  elsif num % 3 == 0
    return "fizz"
  elsif num % 5 == 0
    return "buzz"
  else
      return num
  end
end

#Tests
puts(fizzbuzz(1) == 1)
puts(fizzbuzz(3) == "fizz")
puts(fizzbuzz(5) == "buzz")
puts(fizzbuzz(13) == 13)
puts(fizzbuzz(15) == "fizzbuzz")
puts(fizzbuzz(123457) == 123457)
puts(fizzbuzz(120) == "fizzbuzz")



################
puts "problem 42"
################

=begin
Problem 3: Reverse the String
For this problem, create a method called reverse that takes a string as input and returns
that string in reverse.
=end

def reverse(string)
  string.reverse
end

# Tests
puts(reverse("a") == "a")
puts(reverse("az") == "za")
puts(reverse("abcdefg") == "gfedcba")
puts(reverse("Hello World") == "dlroW olleH")
puts(reverse("rotator") == "rotator")


################
puts "problem 43"
################

=begin
Problem 4: Factorial

You may remember the concept of factorials from math class. The factorial of a number is
that number multiplied by every number below it down to one. Factorials have are
indicated by a ! after an integer.

Example:
6! = 6 x 5 x 4 x 3 x 2 x 1 = 720

Write a method, factorial, that accepts an argument that is a positive integer and returns
the factorial of that integer.
=end

#easy solution
def factorial(num)
  solution = 1
  while num > 1
    solution *= num
    num -= 1
  end
  solution
end

#advanced solution

def factorial(num)
	if num == 1
		1
	else
		num * factorial(num - 1)
	end
end

#my solution

def factorial(num)
	(1..num).inject(:*)
end

#Tests
puts(factorial(1) == 1)
puts(factorial(2) == 2)
puts(factorial(6) == 720)
puts(factorial(13) == 6227020800)
puts(factorial(20) == 2432902008176640000)



################
puts "problem 44"
################

# Problem 5: Longest Word
#
# Write a method, longest_word, that accepts a string as input and returns an array
# containing the longest word(s) in that string, in alphabetical order.
#
# Example:
#
# longest_word("the longest word in this sentence is antidisestablishmentarianism")
#  => ["antidisestablishmentarianism"]

#easy solution
def longest_word(sentence)
  word_array = sentence.split
  longest_words = []
  ind = 0
  longest_length = 0


  while ind < word_array.length
    if word_array[ind].length == longest_length
      longest_words << word_array[ind]
    elsif word_array[ind].length > longest_length
      longest_words = [word_array[ind]]
      longest_length = word_array[ind].length
    end

    ind += 1
  end

  longest_words
end


#advanced solution

def longest_word(sentence)
	longest_words = []
	longest_length = 0
	sentence.split.each do |word|
		if word.length == longest_length
			longest_words << word
		elsif word.length > longest_length
			longest_words = [word]
			longest_length = word.length
		end
	end

	longest_words
end
# Tests
puts(longest_word("") == [])
puts(longest_word("butter") == ["butter"])
puts(longest_word("wheat rice barley quinoa oat") == ["barley", "quinoa"])
puts(longest_word("papaya plum tangerine strawberry apple") == ["strawberry"])
puts(longest_word("long word") == ["long", "word"])


################
puts "problem 45"
################

# Problem 6: Palindromes
#
# Write a method, palindromes, that accepts an array of numbers as an argument and returns
# an array of only the numbers that are palindromes. Palindromes are numbers that are the
# same forward and backward. Numbers in the returned array should be in the same order as
# in the original array.
#
# For Example:
#
# 101 is the same forward and backward. It is a palindrome.
# 102 is 201 backwards; it is not a palindrome.

#easy solution
def palindromes(arr)
	ind = 0
	palindromes = []

	while ind < arr.length
		if arr[ind].to_s.reverse == arr[ind].to_s
			palindromes.push(arr[ind])
		end

		ind = ind + 1
	end

	palindromes
end

#advanced solution

def palindromes(arr)
	arr.select { |num| num.to_s.reverse == num.to_s }
end


#my solution
def palindromes(arr)
  new_list = []
  ind = 0
  while ind < arr.length
    if arr[ind].to_s.reverse.to_i == arr[ind]
      new_list = new_list + [arr[ind]]
    end
    ind += 1
  end
  new_list
end

# Tests
puts(palindromes([1]) == [1])
puts(palindromes([15]) == [])
puts(palindromes([555, 7889887, 43698, 77, 17]) == [555, 7889887, 77])
puts(palindromes([360, 111, 50, 499, 10]) == [111])
puts(palindromes([]) == [])



################
puts "problem 46"
################

# Problem 7: Vowel Count
#
# Write a method, vowel_count, that takes a string as input and outputs a count of the
# number of vowels in the string. Vowels are of the set "a", "e", "i", "o", "u"

#easy solution
def vowel_count(str)
  vowels = ["a", "e", "i", "o", "u"]
  ind = 0
  count = 0
  while ind < str.length
    if vowels.include?(str[ind])
      count += 1
    end
    ind += 1
  end
  count
end

#hard solution
def vowel_count(str)
	vowels = ["a", "e", "i", "o", "u"]
	str.split("").reduce(0) do |count, char|
		vowels.include?(char) ? count + 1 : count
	end
end

# Tests
puts(vowel_count("") == 0)
puts(vowel_count("a") == 1)
puts(vowel_count("this is a string") == 4)
puts(vowel_count("yythjklqwwwwwzx") == 0)
puts(vowel_count("the owl is wise") == 5)



################
puts "problem 47"
################
# Problem 8: Sum of Digits
#
# Write a method, digit_sum, that takes an integer as input and returns the sum of
# its digits.
#
# Example:
# 245 => 2 + 4 + 5 => 11
# 670 => 6 + 7 + 0 => 13
#split numbers into an array
#set ind and sum to 0
# add first number to sum
#add next number to sum

def digit_sum(num)
  arr = num.to_s.split("")
  ind = 0
  sum = 0
  while ind < arr.length
    sum =+ sum + arr[ind].to_i
    ind += 1
  end
  return sum
end

# Tests
puts(digit_sum(0) == 0)
puts(digit_sum(86) == 14)
puts(digit_sum(902557) == 28)
puts(digit_sum(41) == 5)
puts(digit_sum(666666666666) == 72)


################
puts "problem 48"
################
# Problem 9: Prefix Repeat
#
# Write a method, prefix_repeated?, that takes a string and an integer as input. The 
# integer is used to determine the length of the prefix of the string to test. Look
# to see if the prefix is repeated elsewhere, and return true if it is and false if it
# isn't. Assume int is less than or equal to the length of the string.
#
# Example:
# 
# prefix_repeated?("armed armadillo", 3)
# 	- The prefix is the first three letters of the string, "arm".
#   - Now we look to see if the string "arm" is repeated in the string. We can see that it
#     is so we return true.
#
# prefix_repeated("armed armadillo", 4)
# 	- This time the prefix is the first 4 letters, "arme".
#	- "arme" does not appear again in the string so we return false

#easy solution
def prefix_repeated?(string, int)
	string_array = string.split("")
	prefix = ""
	ind = 0

	while ind < int
		prefix = prefix + string_array.shift
		ind = ind + 1 
	end
	
	string_array.join.include?(prefix)
end

#hard solution
def prefix_repeated?(string, int)
	prefix = string.slice!(0, int)
	string.include?(prefix)
end


#my solution
def prefix_repeated?(string, int)
	#set length of prefix
	prefix = string[0..int-1]
	#print out the prefix
	#look for the prefix in the string
	string.include?(prefix)
	
end



# Tests 
puts(prefix_repeated?("a", 1) == false)
puts(prefix_repeated?("prefix predator", 2) == true)
puts(prefix_repeated?("prefix predator", 4) == false)
puts(prefix_repeated?("poster child postfix", 4) == true)
puts(prefix_repeated?("title", 1) == true)

################
puts "problem 49"
################
#Given an array of integers, find the pair of adjacent elements that has the largest product and return that product.
#ex: inputArray = [3, 6, 2] -5, 7, 3], the output should be = 21 bc 7 and 3 produce the largest product.
#todo list
# 1. multiply 1st by 2nd
# => 3 * 6 = 18
# => 6 * 2 = 12
# 2. store into products_array[]
# 3. break at the last ind nil can't be coerced into Fixnum
# 3. find the highest number
# => products_array[].max

def adjacentElementsProduct(inputArray)
  inputArray.each_cons(2).map{ |x, y| x*y }.max
end

puts(adjacentElementsProduct([3, 6, -2, -5, 7, 3]) == 21)



################
puts "problem 50"
################
#find the missing numbers in an array and return how many are missing
#example: [1,4,6] #missing 2,3,5 #total missing = 3

def makeArrayConsecutive2(statues)
    #find missing numbers in statues
    #store missing numbers in array
    #count how many elements in new array
    statues = statues.sort
    new_statues = (statues.first..statues.last).to_a 
    missing_numbers = new_statues-statues
    return missing_numbers.count
    
end

#advanced solution

def makeArrayConsecutive2(statues)
    statues.max - statues.min - statues.size + 1
end


p(makeArrayConsecutive2([1,4]) == 2) #missing_numbers 2,3 #total_missing=2
p(makeArrayConsecutive2([1,4,6,2,3]) == 1) #2,3,4,5,8,9 = 6



