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


#############################
puts "JUNE 21: RECURSIONS"
#############################

# ****look up ASCII:
# numbers correspond to letters A-Z-a-z-,.
# UTF-8 - list of a bunch of characters
#
# recursion
# stack level too deep - function keeps getting called
# need base case

def fibonacci(n)
  if 0 = n then return 0 end
  if 1 = 1 then return 1 end
  fib(n-1) + fib(n-2)

puts fibonacci(6)

def smart_f(num, cache = {})
  if num <= 1
    num
  else
    #||= either pull num out or if nil set it to the other side
    #if num exist in cache, set number to cache, each time we recurse, plug in the cache
    cache[num] ||= smart_f(num - 1, cache) + smart_f(num - 2, cache)
  end
end
p smart_f(40)

##recursive length
def length(a)
  if a.length ==0 then return 0 end
  if a.length== 1 then return 0 end
    p a
    return length(a.drop(1))+a
  end

  a = [1,2,3,4,5,6,7,8]
  puts length(a)

###factorial rec
  def factorial(a)
    if a.length == 0 ||if a.length == 1 then return 0 end
      return a * factorial(a-1)
    end


    puts factorial(5)


###iterative factorial
factorial(n)
(1..n).inject(:*)

###mergesort.rb


#############################
"JUNE 22: SORTING ALGORITHMS"
#############################
[1, 2, 3, 4, 5]
finding length of arr

stupid search:
worst = n times
best = 1 time
avarage = n/2
if double arr
  worst = n*2
worst case O(n)
best case Omega(1)

B search:
worst case: 4
best case: 1
if double arr
  worst=5
worst: O(logn)

cd into directory
git init - initializes
git status

git add -p file

git push

git stash
git pull
git stash pop


######################################################
######################TESTING#########################
######################################################
#begin
- look for unforseen emergencies
- support continued dev
- make sure it works
- make sure new code dosent break existing code
- validating data
- help to design a program
- documenting code/ good for new devs to come in and get up to speed
#end

test driven dev - run tests before writing any code and etc 

methods: describe, context
