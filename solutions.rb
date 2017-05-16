#1
#print out 1-10
ind = 1
while ind <= 10
  puts ind
  ind += 1
end

#2
#exercise: print "Ruby!" string 30 times using loop
ind = 1
while ind <= 30
  puts ind.to_s + " Ruby!"
  ind += 1
end

#3
#exercise: print 1-5 using while
ind = 1
while ind <= 5
  puts ind
  ind += 1
end

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
