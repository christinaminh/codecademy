# Create class Computer with class variable @@users set equsl to an empty hash
class Computer
  @@users = {}
 # Each new object of class Computer needs a username and password. 
#Create empty hash to track files. 
#@@users hash keeps usernames as keys with each username's password as the associated value
  def initialize(username, password)
    @username = username
    @password = password
    @files = {}
    @@users[username] = password
  end
# Define a method called create with a single parameter, filename. 
# Declare a variable called time and set it to the current time.
# Add a new key/value pair to the @files hash. Use the filename key to store the value time.
# Display this file was created by this user at this time"
  def create(filename)
    time = Time.now
    @files[filename] = time
    puts "#{filename} was created by #{@username} at #{time}."
  end
# Define a class method called Computer.get_users with no parameters. This method should return the @@users class variable.
  def Computer.get_users
    @@users
  end
end

# Create an instance of Computer class and store it in a new variable call my_computer.
my_computer = Computer.new("cminh", "securepassword")

# Create a file on my computer
my_computer.create("todo.txt")

# Display all users.
puts "Users: #{Computer.get_users}"