# Die Class 1: Numeric

# I worked on this challenge by myself.

# I spent 1.5 hours on this challenge.

# 0. Pseudocode

# Input: Calling an instance of a new class with methods.
# Output: A new class that can be called upon to return integers.
# Steps:
# -Call new class
# -Define initialize method to accept a number of sides and save it as an instance
# 	-RAISEs an ARGUMENT ERROR if there are less than 2 sides
# -Define sides method as an instance
# -Define roll method to return a random integer based on number of sides given


# 1. Initial Solution

class Die
	
  def initialize(sides)
    if sides < 2
    	raise ArgumentError.new("You can't have a die with less than 2 sides, silly!")
    else
    	@sides = sides
    end
  end

  def sides
    @sides
  end

  def roll
  	sides.rand + 1
  end

end

# 3. Refactored Solution

class Die
	
  def initialize(sides)
    if sides < 2
    	raise ArgumentError.new("You can't have a die with less than 2 sides, silly!")
    elsif sides % 1 != 0
    	raise ArgumentError.new("A die with only part of a side? That doesn't even make sense!")
    end
    @sides = sides
  end

  attr_reader :sides

  def roll
  	sides.rand + 1
  end

end

# Driver code

die = Die.new(30)
puts "Rolling a dice with #{die.sides} sides..." 
puts "You rolled a #{die.roll}!"

# 4. Reflection

# What is an ArgumentError and why would you use one?

# An ArgumentError is an error that occurs based on an argument that a user inputs.
# You would use one to filter the possible inputs one would provide that would otherwise pass.

# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?

# I implemented ArguementError.new() and .rand. These were pretty straight-forward and easy to implement.
# However, I had to do a bit of research to figure out .rand starts at 0 and doesn't include the maximum value. 
# Adding 1 was an easy fix.

# What is a Ruby class?

# A Ruby class is essentially like a blueprint, from which objects can be created.

# Why would you use a Ruby class?

# You would use a Ruby class to create objects that don't already exist.
# This way, you can use these new objects in other methods.

# What is the difference between a local variable and an instance variable?

# A local variable is defined in a method, needs to be explicitly initialized, has no default value, and is only available in the method they are created in.
# An instance variable is defined in a class, does not need to be explicitly initialized, has a default value (0 or nil), and is available to all methods in the class it was created.

# Where can an instance variable be used?

# See above! :)
