=begin
#problem 1:
#Write a program which asks for a person's first name, then middle, then last.
#Finally, it should greet the person using their full name.

puts 'What is your first name? '
first_name = gets.chomp

puts 'What about your middle name?'
middle_name = gets.chomp

puts 'Last name now:'
last_name = gets.chomp

puts 'Hello ' + first_name + ' ' + middle_name + ' ' + last_name + '. It\'s so good to meet you, ' + first_name + '!'
=end

=begin
#PROBLEM 2:
#Write a program which asks for a person's favorite number.
#Have your program add one to the number, then suggest the result as a bigger and better favorite number.

puts 'Whats your favorite number hun?'
favorite_number = gets.chomp.to_i
new_number = favorite_number + 1
puts 'I think ' + new_number.to_s + ' is much better ;)' # need to convert new_number to string
=end

=begin
#PROBLEM 3
#Ask for first, middle, and last names individually, and then adds those lengths together

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

=begin
#PROBLEM 4
#"99 bottles of beer on the wall..."
#Write a program which prints out the lyrics to that beloved classic, that field-trip favorite:
#"99 Bottles of Beer on the Wall."
#TODO: how to replace 0 with "no more"**


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

=begin
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

=begin
#PROBLEM 6: Leap Years
#Write a program which will ask for a starting year and an ending year,
#and then puts all of the leap years between them (and including them, if they are also leap years).
Leap years are years divisible by four (like 1984 and 2004).
However, years divisible by 100 are not leap years (such as 1800 and 1900) unless they are divisible by 400
(like 1600 and 2000, which were in fact leap years).
(Yes, it's all pretty confusing, but not as confusing as having July in the middle of the winter,
which is what would eventually happen.)
** to do: count how many leap years
=end

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
