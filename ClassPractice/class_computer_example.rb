#virtual computer & its instances that manipulate imaginary files
#initialize username, password,
#class variable: users to keep track of them in an empty hash
#instance variable files to keep track of files in an empty hash
#method create with filename as param  that records time & uses the files hash to store filename and time
	#print message of what was created, when and by who
#create a class method get_users to reach(return) the @@users variable
#create an instance of our Computer with username/password
#call the create method on the instance of Computer

class Computer
	@@users = {} #class variable, hash that keeps track of users

	def initialize(username, password)
		@username = username
		@password = password
		 #so the @@users hash keeps uersname as keys with each username's passoword as a value
		@@users[username] = password
		@files = {} #empty hash to keep track of the files later
	end

	def create(filename)
		time = Time.now
		@files[filename] = time #adds to files hash username as key, time as value
		puts "filename #{filename} was created #{time} by #{@username}"
    puts "files arrreee#{@files}"
	end

	def Computer.get_users
		@@users
  end

  def Computer.get_files
  @files
  end
end

my_computer = Computer.new("ovpuser", 1234)
your_computer = Computer.new("crazyguy", 5678)

my_computer.create("rubypractice.rb")
your_computer.create("rubyisfile.txt")

puts "users: #{Computer.get_users}"
puts "files: #{Computer.get_files}"
