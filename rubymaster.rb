###STRING METHODS###

"olessia potapova".length
"olessia potapova".reverse #good for sorting from highest/lowest
puts "olessia".upcase # OLESSIA
puts "POtapova".downcase # potapova

name = "Olessia"
name.downcase.reverse.upcase #AISSELO

print "whats your last name?"
last_name = gets.chomp # "gets" is input "chomp" removes extra ruby line
last_name2 = last_name.capitalize
last_name.capitalize!

puts "your last name is #{last_name}!"

###IF/ELSE

if 5 < 7
  puts "7 is less than 5"
elsif 5 > 7
  puts "5 is greater than 7"
else
  puts "5 is 7"
end

puts "dr"
