#Attr Methods

# I worked on this challenge by myself.

# I spent 1.5 hours on this challenge.

# Pseudocode

# Input: My name
# Output: A salutation string
# Steps:
# -Set up classes for name and greeting
# -Define #initialize methods for NameData and Greetings classes:
# 	-#initialize for NameData initializes a variable for my name
# 	-#initialize for Greeting initializes a instance of NameData
# -Set attribute reader for name
# -Define method in Greetings class that returns a string with a greeting including the name

class NameData

	attr_reader :name

	def initialize
		@name = "Aaron"
	end

end


class Greetings

	def initialize
		@name_data = NameData.new
	end

	def aggressive_flirt
		p "Hello #{@name_data.name}! You are looking so sexy today... I'd totally hit it! ;)"
	end

end

greet = Greetings.new
greet.aggressive_flirt

# # Reflection

# Release 1:

# What are these methods doing?

# There are methods to: initialize the Profile class, print the info, 
# display the age, change the age, display the name, change the name, 
# display the occupation, and change the occupation. The method names
# for each of these actions is pretty obvious.

# How are they modifying or returning the value of instance variables?

# The displaying methods just return their associated instance variable
# while the altering methods change their associated instance variable.

# Release 2:

# What changed between the last release and this release?

# The #what_is_age? method was replaced with 'attr_reader: age'.

# What was replaced?

# #age could be called on instance_of_profile instead of #what_is_age.

# Is this code simpler than the last?

# Yes.

# Release 3:

# What changed between the last release and this release?

# 'attr_writer: age' was added.

# What was replaced?

# #age could be called on instance_of_profile instead of #change_of_age.

# Is this code simpler than the last?

# YEP!

# Release 6:

# What is a reader method?

# A reader method can use an instance method but not change it.

# What is a writer method?

# A writer method can change an instance method but not read it.

# What do the attr methods do for you?

# They allow you to access and/or manipulate the specified instance variables outside of the class.

# Should you always use an accessor to cover your bases? Why or why not?

# No because you may not want to alter the instance variable, a that could mess up your program.
# It's also often for security purposes.

# What is confusing to you about these methods?

# After finishing the challenge, I think I have a pretty clear understanding of these methods.
