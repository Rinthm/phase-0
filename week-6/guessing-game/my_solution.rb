# Build a simple guessing game


# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# Pseudocode

# Input: An integer as a guess
# Output: A symbol indicating whether the guess was too low, too high, or correct
# Steps:
# -Define #initialize method that takes an integer (answer) as input
# -Define #guess instance method that takes an integer (guess) as input
# 	-IF the guess is lower than the answer
# 		-RETURN :low
# 	-IF the guess is higher than the answer
# 		-RETURN :high
# 	-IF the guess is the same as the answer
# 		-RETURN :correct
# -Define #solved? instance method
# 	-RETURNs true if the most recent guess was correct
# 	-RETURNs false otherwise



# Initial Solution

# class GuessingGame
#   def initialize(answer)
#     @answer = answer
#   end

#   def guess(num)
#   	@previous_guess = num
#   	if num < @answer
#   		return :low
#   	elsif num > @answer
#   		return :high
#   	elsif num == @answer
#   		return :correct
#   	end
#   end

#   def solved?
#   	if @previous_guess == @answer
#   		return true
#   	else
#   		return false
#   	end
#   end

# end




# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(num)
  	@previous_guess = num
  	if num < @answer
  		return :low
  	elsif num > @answer
  		return :high
  	elsif num == @answer
  		return :correct
  	end
  end

  def solved?
  	if @previous_guess == @answer
  		return true
  	else
  		return false
  	end
  end

end


# Driver Code

game = GuessingGame.new(3)
p game.guess(0)
p game.solved?
p game.guess(3)
p game.solved?
p game.guess(45)
p game.solved?

# Reflection

# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?

# They are functional only within the class they were created in. 
# While the contents of real-world objects are not always STRICTLY functional to the object,
# their purpose is certainly intended to function with the object.

# When should you use instance variables? What do they do for you?

# You should use instance variables when you want to access/manipulate their value in other methods within the class.
# They store values locally within just the class they are created in.

# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?

# Flow control allows you to return different outputs based on certain conditions.
# This allows you to change where your program "goes" depending on which conditions are met (which often depends on user input).
# I actually had a pretty easy time using it in this challenge.
# I couldn't even find a way to refactor my initial solution!

# Why do you think this code requires you to return symbols? What are the benefits of using symbols?

# Because there will likely be a lot of guesses in this program, and thus there will be a lot of information returned.
# The benefit of using symbols is that they save space.
# Each time a string is repeated, it will have a new object id, and thus take up more space.
# Each time a symbol is repeated, it will retain the same object id, and thus save space.