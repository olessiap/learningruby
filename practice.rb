#1***
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

#4***
#write a method that returns a string,
#adding to that string a person's name.

def phrase(name)
  result = "My name is " + name
  return result
end

puts phrase("Olessia!!")

#5***
#Century from year
#Given a year, return the century it is in.
#The first century spans from the year 1 up to and including the year 100,
#the second - from the year 101 up to and including the year 200, etc.

def century(year)
  if year % 100 != 0
    return year/100 + 1
  else
    return year/100
  end
end

puts century(97)
puts century(101)
puts century(200)
puts century(1900)
puts century(2017)


#6
#Palindrome
#Given the string, check if it is a palindrome.

def palindrome(str)
  if str.reverse == str
    return true
  else
    return false
  end
end

puts palindrome("hannah")
puts palindrome("blurp")



#7***
#Given an array of integers,
#find the pair of adjacent elements that has the largest product
#and return that product.


#8
#evaluate the expression 12 ** 2, and print the result 3 times

result = 12 ** 2
puts result.to_s * 3


#9 print out 1-4

ind = 1
while ind <=4
  puts ind
  ind += 1
end


#10***
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

#11***
#print out all numbers divisible by 3 from 0 - 100

num = (1..101).to_a

ind = 0
while ind < num.length
  if num[ind] % 3 == 0
    puts num[ind]
  end
  ind +=1
end


#12
#HOW WOULD YOU DETERMINE THE LENGTH OF ARRAY ["A", "B", "C"]?
array = ["A", "B", "C"]
puts array.length


#13
#FIND THE LAST ITEM IN ARRAY of VEGETABLES USING .LENGTH.



#14
#WRITE A WHILE LOOPS THAT PRINTS EVERY ODD NUMBER FROM THE VARIABLE ONE_TO_TEN.
#one_to_ten = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
one_to_ten = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 99]

for i in one_to_ten
  if i % 2 != 0
    puts i
  end
end


#15 ***
#WRITE A WHILE LOOP THAT WILL REMOVE EACH ITEM FROM THE END OF BEVERAGES
#AND PLACE IT AT THE BEGINNING OF FOODS.
#foods = ["bread", "cheese", "onions", "bananas"]
#beverages = ["juice", "water", "vodka", "coffee"]

foods = ["bread", "cheese", "onions", "bananas"]
beverages = ["juice", "water", "vodka", "coffee"]

ind = 0
while beverages.length > 0
  last = beverages.pop
  foods.unshift(last)
  ind += 1
end

puts foods

#16***
#replace all languages in the following array to Ruby
#best_programming_languages = ["C++", "Go", "Ruby", "JavaScript", "Python"]

best_programming_languages = ["C++", "Go", "Ruby", "JavaScript", "Python"]

ind = 0
while ind < best_programming_languages.length
  if best_programming_languages[ind] != "Ruby"
  best_programming_languages[ind] = "Ruby"
  end
  ind += 1
end

puts best_programming_languages.inspect

#17
#CHANGE THE THIRD ITEM IN THE COUNTRIES ARRAY TO "COLOMBIA".
#countries = ["Denmark", "Kenya", "Australia", "USA", "Bhutan"]
countries = ["Denmark", "Kenya", "Australia", "USA", "Bhutan"]

countries[2] = "COLOMBIA"

puts countries.inspect


#18
#WRITE A WHILE LOOPS THAT UPDATES EVERY EVEN NUMBER IN ODDS BY SUBTRACTING 1 FROM IT.
#odds = [777, 14, 12, 39, 41, 10, 1, 355]
odds = [777, 14, 12, 39, 41, 10, 1, 355]
ind = 0
while ind < odds.length
  if odds[ind] % 2 == 0
    odds[ind] -= 1
  end
  ind += 1
end
puts odds.inspect

#19***
#find if the languages array contains Korean
#languages = ["German", "English", "Arabic", "Hungarian", "Spanish", "Japanese"]
languages = ["German", "Korean", "Arabic", "Hungarian", "Spanish", "Japanese"]

languages.include?("Korean")


#20***
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

#21
#HOW CAN WE ACCESS THE FIFTH CHARACTER IN THE STRING "DESTINATION: DEV"?

puts "DESTINATION: DEV"[4]

#22***
#HOW WOULD YOU SEPARATE THE STRING "PROGRAMMING IS FUN" INTO AN ARRAY OF WORDS?

og_string = "PROGRAMMING IS FUN"
split_string = og_string.split
puts split_string


#23
#PRINT OUT THE FOLLOWING SENTENCE WITH A HASH IN BETWEEN WORDS INSTEAD OF A SPACE:
#"Are you getting the hang of this?"

question = "Are you getting the hang of this?"
arr = question.split
puts arr
puts(arr.join("-"))

#24
#return only the first 5 characters of any string

string = "heeelloo world"
puts string[0..4]

#25
#FINISH THE CODE BELOW TO RETURN THE ALPHABET ARRAY AS A SINGLE STRING,
#WITH EACH LETTER LOWERCASE. THE LETTERS SHOULD BE SEPARATED BY SEMICOLONS(;)

#alphabet = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]

alphabet = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
puts alphabet.join(";").downcase

#26
#add the following strings together, separated by a space and capitalize the first word
#strings: 'see' 'you' 'soon'
def capitalize_join(arr)
  arr.join(" ").capitalize
end

puts capitalize_join(["see", "you", "soon"])

#27***
#take the 3 strings and output a shuffled combination of all the letters with no spaces.
#strings: "Cat", "Dog", "Human"

def shuffle(str)
  str.split("").shuffle
end

def combined(str1, str2, str3)
    shuffle(str1) + shuffle(str2) + shuffle(str3)
end

puts combined("Cat", "Dog", "Human")

#DEFINE A METHOD, CALLED HELLO_WORLD, THAT PRINTS OUT THE STRING "HELLO WORLD!".
#THEN, CALL THE METHOD TO MAKE IT PRINT.

def hello_world
  puts "HELLOW WORLD!"
end

hello_world

#29***
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


#30***
#print out only even numbers
#numbers: 1,3,5,6,8,11,12
#(check if the array is empty first, use return)

def numbers(arr)
  if arr.length == 0
    return "that array is empty!"
  end


  ind = 0

  while ind < arr.length
    if arr[ind] % 2 == 0
      puts arr[ind]
    end
    ind += 1
  end
end

puts numbers([])
puts numbers([1,3,5,6,8,11,12])

#31***
#print out the following numbers until 0 ([1, 3, 6, 2, 0, 14, 9, 7])
#(use break, print "all done" at the end)

def numbers(arr)
  ind = 0
  while ind < arr.length
    if arr[ind] == 0
      break
    else
      puts arr[ind]
      ind += 1
    end
  end

  puts "all done!"

end

puts numbers([1, 3, 6, 2, 0, 14, 9, 7])

#32***
#WRITE A METHOD, PRINT_UNTIL_EMPTY, THAT WILL TAKE IN A STRING
#AND PRINT OUT EVERY LETTER UNTIL AN EMPTY SPACE IS ENCOUNTERED

def print_until_empty(str)
  str.split("")
  ind = 0
  if str[ind] == ""
    break
  else
    puts str[ind]
  end
end

puts print_until_empty("hellooooo world")
