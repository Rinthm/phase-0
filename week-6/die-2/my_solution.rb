# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.
# I spent 1 hours on this challenge.

# Pseudocode

# Input: An array of strings
# Output: A randomly selected string from the array
# Steps:
# -Define a method that accepts an array of strings as an input.
# -RAISE an error IF the array passed is empty
# -Find the length of the array for 'sides' method.
# -Return a random string from the array when 'Die.roll' is called.


# Initial Solution

class Die
  def initialize(labels)
    raise ArgumentError.new("You need at least one label!") unless labels.count > 0
    @sides = labels.count
    @labels = labels
    puts "This die has #{sides} labels."
  end

  def sides
    @sides
  end

  def roll
    @labels.sample
  end
end



# Refactored Solution

class Die
  def initialize(labels)
    raise ArgumentError.new("You need at least one label!") if labels.empty?
    @sides = labels.count
    @labels = labels
  end

  attr :sides

  def roll
    @labels.sample
  end
end

# Driver Code

# die = Die.new([])
# die = Die.new(["A", "Kava", 6])
# die = Die.new(["A", "B", "C", "D", "E", "F"])
# p die.sides
# p die.roll

# Reflection

# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?

# The logic was pretty similar, I just had to add '@labels' to be able to still iterate over it in my #rolls method.
# The main difference was having to return a random string element rather than just a number.

# What does this exercise teach you about making code that is easily changeable or modifiable?

# It makes tackling a new (yet similar) problem much quicker and easier!

# What new methods did you learn when working on this challenge, if any?

# I learned about the #sample method, which takes one random element from a data structure.
# I also learned the #empty? method which checks if a data structure is empty.
# The #count method was new to me as well, which counts the number of elements in a data structure. I previously have used #length or #size.

# What concepts about classes were you able to solidify in this challenge?

# I solidified how you need to include instance variables in your initialize method if you want to use them in other methods within the class.
