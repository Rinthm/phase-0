# PezDispenser Class from User Stories

# I worked on this challenge by myself.
# I spent 1 hours on this challenge.


# 1. Review the following user stories:
# - As a Pez user, I'd like to be able to "create" a new Pez dispenser with a group of flavors that
#      represent Pez so it's easy to start with a full Pez dispenser.
# - As a Pez user, I'd like to be able to easily count the number of Pez remaining in a dispenser
#      so I can know how many are left.
# - As a Pez user, I'd like to be able to take a Pez from the dispenser so I can eat it.
# - As a Pez user, I'd like to be able to add a Pez to the dispenser so I can save a flavor for later.
# - As a Pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order
#      of the flavors coming up.


# Pseudocode

# Create a class 'PezDispenser'.
# Create an 'initialize' method that takes an array (flavors) as input.
# Create a 'pez_count' method that returns the number of pez.
#   -Calculate the length of 'flavors' array.
# Create a 'get_pez' method that chooses a random flavor for the user to eat.
#   -Remove a random flavor from 'flavors' array.
# Create an 'add_pez' method that accepts a string as input.
#   -Pushes the input to 'flavors' array.
# Create a 'see_all_pez' method.
#   -Iterate through 'flavors' array.
#   -Print each flavor.


# Initial Solution

class PezDispenser

  attr :flavors

  def initialize(flavors)
    @flavors = flavors
  end

  def pez_count
    @flavors.length
  end

  def get_pez
    flavor = @flavors.sample
    @flavors.delete(flavor)
  end

  def add_pez(new_flavor)
    @flavors << new_flavor
  end

  def see_all_pez
    puts @flavors
  end

end


# Refactored Solution

class PezDispenser

  attr :flavors

  def initialize(flavors)
    @flavors = flavors
  end

  def pez_count
    @flavors.length
  end

  def get_pez
    flavor = @flavors.sample
    @flavors.delete(flavor)
  end

  def add_pez(new_flavor)
    @flavors << new_flavor
  end

  def see_all_pez
    puts @flavors
  end

end


# DRIVER TESTS GO BELOW THIS LINE

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"
puts "Here's a look inside the dispenser:"
puts super_mario.see_all_pez
puts "Adding a banana pez."
super_mario.add_pez("banana")
puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"




# Reflection

=begin
What concepts did you review in this challenge?

  I reviewed Ruby classes and accessing instances variables.

What is still confusing to you about Ruby?

  This challenge was honestly pretty easy. I am not confused about any of the 
  aspects of this particular challenge.

What are you going to study to get more prepared for Phase 1?

  I think I just need to study more JavaScript!
=end