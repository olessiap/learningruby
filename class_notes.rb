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

######################################################
#################### DATA TYPES ######################
######################################################


basic data types

primitive types: binary 0s and 1s

boolean
byte - short
char - 16 bits (storing character data)
short -
int - 32 bits
long -  64 bits
float - 32
double - 64

#############
Linked List - good for insertions and deletions (arrays good at accessing values at a particular place)
simplest data structure
disadvantage - goes element by element to get to the key
advantage - insert and delete in beginning super quick (constant time)
  good for implementing a stack, queue,
list = LinkedList.new


#############
hash_function - outputs unique num for any string
#############
 => pass it a string and it will retun a numerical reprisentation of that string
 => hash_function("Blake") ---> 1234567
murmurhash: rawdigest gives a digest number
            hexdigest gives a hexidecimal 12345g456

digest::MurmurHash1.rawdigest("Henry") % 4 (4 bc 4 elements in array)
if collision do a linked list at the element where they are collided

#############
STACK - (LIFO) last in first out (pop)
  under the stack singly linked list

#############
Queue - FIFO
  under the hood doubly linked list


  ######################################################
  ##################### TREES ##########################
  ######################################################

puzzle traverse


disctionary Trie
-autocomplete, list of word in text, spell check, autocorrect, predictive text, emojis

binary tree search
depth first search - go all the way to bottom of each branch continuously
breadth first search - go down one level, then the next level

visualalgo.net


######################################################
##################### GRAPHS ##########################
######################################################

made up for vertices and edges

vertex - node that holds the value and connections
edges - holds some info

weighted vs unweighted
weighted - (edges hold some info about the connection) google webpage indexing
unweighted (no info)



graphs - cities: distance between
        currency: converstion rates between
        fb connections


directed(vs undirected)= connection between nodes go in a specific order
(ex: twitter vs fb)

depth-first search
useful for finite graphs, with 1 potential solution(a maze)
simplte algorithm, low memory cost
can do it recursively


breath-first search(more useful in practice)
explore shallower nodes before deeper nodes
explore every 1st degree nodes first, then every second degree
useful for infinite graphs
prototypical example: shortest path
more complex algorithm, more memory usage


######################################################
##################### SQL  ###########################
######################################################

TABLE RELATIONSHIPS
* one-to-many
* many-to-many
* foreign Key vs Primary key
* Join table

SELECT books.id, books.author, author.title
FROM books
INNER JOIN authors ON books.id = author.id


######################################################
#################ACTIVE RECORD #######################
######################################################
=begin
Object Relational Mapper

class represents the table -
keeps track of all the attributes(columns) of class

rails takes requests from web browswers and constructing html pages based on the data in the DB
html pages are dynamic, change depending on who's looking at them.
it does CRUD operations
=end

#CREATING STUFF WITH ACTIVE RECORD

rbenv global (global ruby version for my projects )
.ruby-version file has
.rbenv local





#CREATE a new lingo (class methods )
Lingo.create(attributes_hash)

Lingo.create({term: "Unicorn", definition: "Billion dollar + startup"})
#refresh psql
#hit arrow

####################

#READ (class methods)
Lingo.find(id)


Lingo.find(1)
s3
s3 = Lingo.find(1) #instance of the Lingo class,
s3.class
s3.term #all attributes become methods on the instance
s3.definition

lingos = Lingo.where({term: "AWS"})
lingos.class #beefed up array
lingos.first
lingos[0]

users = User.all
users.first
users.map {|users| user.email}.select{|email| email == ""}

Users.count

User.find_by_email("email")

User.all.order(created_at: : desc)

####################
#UPDATE (instance method )
instance.attribute = "something"
instance.save
instance.update_attributes({ }) #multiple updates at a time


Lingo.last
boot.term = "bootstrapping" #sets term to lowercase
boot.term #check
boot.save #writes the update to the database (instance method)


####################
#DELETE (instance method)
instance.destroy

Lingo.find(56) #error bc deleted

simplecto_questions.txt
1. Question.count
2. Lingo.find(16)
3.


#bundle exec rails to run rails irb console


################################################################
##################DD TO DO LIST  RAILS APP #####################
################################################################

instructor Todo

Student Todo

tables
Users: ability to assign tasks to user
-id
-firstname
-lastname
-email
-user_type(student vs instructor)
-bday
-

TodoLists: (title, items)
-id
-title
-created_at
-owner
-status(complete/incomplete//in progress)
-number of items



TodoItems:
-assignor
-assignee
-name
-description
-due date
-status (complete, incomplete, in progress)
-delete


Rails new ddev_todo_app -T --database=postgresql
Gemfile - has all the gems required for the rails app + version constraints
update README, how to run in development
config- database to use
app > models
bundle exec rails db:create

to generate new tables: use migration files (db>migrate)

create user table in DB:
bundle exec rails generate migration create_users
^ created a new migration file, add user columns
  t.string :firstname,
  t.integer :user_type,
  t.date :dob,

  t.timestamps #creates created_at & updated_at

migrate to DB
bundle exec rails db:migrate

create todo list:
bundle exec rails generate migration create_todo_list
  t.string :title,
  t.integer :status,
  t.references :user, foreign_key: true,
  t.timestamps
bundle exec rails db:migrate
looks at PSequel to check

create todo Items:
bundle exec rails generate migration create_todo_items
    t.text :description
    t.string :summary
    t.datetime : due_date (reminder?)


    t.timestamps
create addListReferenceToTodoItems:
    add reference file??????
      def change
        add_reference :todo_items, :todo_list, foreign_key: true
      end

create addStatusToTodoItems:
  def change
    add_column, :todo_items, :status, :integer, default: 0
  end
  bundle exec rails db:migration

add 2 reference to the user table for assginer

generate migration add_assigner_and_assignee_refence_to_todo_itmes
  def change
    add_reference :todo_items, :user, foreign_key: true
    add_column :todo_ites, :assigneee_id, :integer
  end

create 3 new model files in models
& add associations between our models
  class User < ApplicationRecord
    has_many :todo_lists
    has_many :todo_items
  end

  class TodoList < ApplicationRecord
    belongs_to :user
    has_many :items
  end

  class TodoItem < ApplicationRecord
    belongs_to :user
    belongs_to :assignee, class_name: "User"
    belongs_to :todo_list
    end

look at some records in irb: rac or rails c

u = User.new
u.firstname = "Esteban"
u.lastname = "Avila"
u.email = "estebanavila@gmail.com"
u.user_type = 0
u.dob = "1995-01-07".to_date
u.ice_cream = "green tea"
u # look at his user
u.save
confirm in DB

create todo list for esteban:

list = TodoList.new
list.status = 0 (should have done this too???)
list.user = u #adds E as user
u
list
list.title = "Shopping List"
list
list.save


user,
post karma
preferences
posting comments
what kind of data in the comments

subreddit
posts,
comments,
