puts 24 * 365 # hours in a year

puts (60 * (24 * 365)) * 10 # minutes in a decade

puts (60 * (24 * 365)) * 60 * 26  #my age in seconds

# Write a program which asks for a person's first name, then middle, then last.
#Finally, it should greet the person using their full name.
=begin
puts 'What is your first name? '
first_name = gets.chomp

puts 'What about your middle name?'
middle_name = gets.chomp

puts 'Last name now:'
last_name = gets.chomp

puts 'Hello ' + first_name + ' ' + middle_name + ' ' + last_name + '. It\'s so good to meet you, ' + first_name + '!'


#Write a program which asks for a person's favorite number.
#Have your program add one to the number, then suggest the result as a bigger and better favorite number.

puts 'Whats your favorite number hun?'
favorite_number = gets.chomp.to_i
new_number = favorite_number + 1
puts 'I think ' + new_number.to_s + ' is much better ;)' # need to convert new_number to string
=end













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
