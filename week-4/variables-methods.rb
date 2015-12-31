puts "What is your first name?"
first_name = gets.chomp
puts "What is your middle name?"
middle_name = gets.chomp
puts "What is your last name?"
last_name = gets.chomp
puts "Hello, #{first_name} #{middle_name} #{last_name}, it's nice to meet you."

puts "What is your favorite integer?"
fav_int = gets.chomp
better_int = fav_int.to_i + 1
better_int.to_s
puts "Well, I think #{better_int} is a bigger and better number."

##

# Release 7: Reflect


# How do you define a local variable?

# By setting an acceptable phrase equal to a string or integer/float (or other value).
# e.g. name = "Aaron"

# How do you define a method?

# Like this:
# def method_name(input_1, input_2, etc.)
# 	[body]
# end

# What is the difference between a local variable and a method?

# A local variable is like a placeholder for a single string/integer/float.
# A method can take multiple inputs.
# e.g. favorite_numbers(3, 13, 30)

# How do you run a ruby program from the command line?

# By typing "ruby [file_name].rb".

# How do you run an RSpec file from the command line?

# By typing "rspec [file_name.rb".

# What was confusing about this material? What made sense?

# The most confusing thing was keeping track of all the proper Ruby syntax.
# The rest of the assignment made pretty good sense, especially after experimenting for a while.
