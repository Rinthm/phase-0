# Pad an Array

# I worked on this challenge with: Kyle Cierzan.

# I spent 2 hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? The array, a minimum size, and an optional arguement.
# What is the output? (i.e. What should the code return?) If the arrays length < the minimum size, 
# it should return a new array padded with the pad value. Otherwise it should just return the array.
# What are the steps needed to solve the problem?
# Create a variable that is equal to the minimum size less the length of the array (DIFFERENCE)
# IF length of array is >= min_size
# return array
# ELSE
# WHILE DIFFERENCE > 0
# push argument to array
# decrement DIFFERENCE


# 1. Initial Solution
# def pad!(array, min_size, value = nil) #destructive
#  difference_in_size = min_size - array.length
#  if difference_in_size <= 0
#    return array
#  else
#    while difference_in_size > 0
#      array.push(value)
#      difference_in_size -= 1
#    end
#    return array
#  end
# end

# def pad(array, min_size, value = nil) #non-destructive
#   new_array = []
#   array.each do |x|
#   	new_array.push(x)
#   end
#   difference_in_size = min_size - array.length
#  		if difference_in_size <= 0
#    		return new_array
#  		else
#   		while difference_in_size > 0
#      		new_array.push(value)
#      		difference_in_size -= 1
#    		end
#    		return new_array
#  		end
# end


# 3. Refactored Solution

def pad!(array, min_size, value = nil)
	if min_size <= array.length
		return array
	else
		while min_size - array.length > 0
			array << value
		end
		return array
	end
end

def pad(array, min_size, value = nil)
	new_array = Array.new(array)
	if min_size <= array.length
		return new_array
	else
		while min_size - new_array.length > 0
			new_array << value
		end
		return new_array
	end
end

# 4. Reflection

# Were you successful in breaking the problem down into small steps?

# We were indeed successful, but we ultimately had to change some things after testing the code.

# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?

# We had some difficulties with our original pseudocode and ultimately had to start from scratch and write new pseudocode. Once we wrote the new pseudocode we successfully translated it into code.

# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?

# It wasn't at first. We failed most of the tests and had to restart. Once we reworked the problem, we got an error saying we failed to define 'pad'. Turns out I forgot to save before doing the rspec. Oops!

# When you refactored, did you find any existing methods in Ruby to clean up your code?

# We found some small improvements, like using '<<' to add the value to the new array and 'Array.new(array)' to create a new array in a non-destructive way.

# How readable is your solution? Did you and your pair choose descriptive variable names?

# I think we ended up with a pretty readable solution. We chose straightforward and descriptive variable names.

# What is the difference between destructive and non-destructive methods in your own words?

# Destructive methods will change your original input, while non-destructive methods will not.
