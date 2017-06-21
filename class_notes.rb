# ###################
# puts "Problem 1"
# ###################
# #pair exercise
#
# #easiest example:
#
# #A B C D
#
# exit if num_days = list.length -1
# Day1
# 1.given an array of elements
# 2. pair off the first 2 elements
# 3.pair = ind of element + 1
# 4.keep track of pairs in a variable (A -> B)
# 5.eliminate used pairs
# 6.repeat from step 2
#
# 7.pair off i=0 of array
# 8.add it to day 1 pairs
# 9.eliminate used pairs again
#
# if original array is empty move on to day2
#
# Day1 pairs: (A,B) (C,D)
#
# Day2
# 1.
# loop through all pre-existing pairs
# unless el + 1 appears in day1 pair
# if yes, el + 2
#
# Day2 pairs: (A,C) (B, D)
#
# Day3 pairs: (A, D) (B, C)


#############################
puts "JUNE 20: EXCEPTIONS"
#############################

#syntax
def one_arg(arg)
end

begin
  one_arg(1,2)
rescue => e
  p e.class
end

###
def addition(a, b)
  unless a.class == Fixnum && b.class == Fixnum
    raise TypeError
  end

  a + b
end

p addition("string", "string")

################
puts I/O
################
#2 styles
#blocking
#unblocking
#https://stackoverflow.com/questions/1241429/blocking-io-vs-non-blocking-io-looking-for-good-articles
#https://www.quora.com/In-simple-terms-what-is-blocking-and-non-blocking-IO

#webservers: blocking or unblocking

#when connecting to another computer use localhost + port
$stdout = puts/print
putc => prints one character(special)
printf

rb script => ruby class.rb arg1, arg2
ARGV = ["arg1", "arg2"]

filename = ARGV[0]

csv file = text separated file (CSV class)
