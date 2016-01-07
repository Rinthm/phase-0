# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? A positive integer.
# What is the output? (i.e. What should the code return?) A comma-separated integer as a string.
# What are the steps needed to solve the problem?
# -Define a method with one input (a positive integer)
# -Convert the integer input to a string
# -Find length of string.
# -IF the string length is < 4:
# 	-RETURN the string without any commas added
# -ELSIF the string length % 3 == 0:
# 	-Add a comma before string index -3, -6, -9, etc. without add a comma before first integer.
# 	-RETURN the new string
# -ELSE 
# 	-Add a comma before string index -3, -6, -9, etc. 
# 	-RETURN the new string
# -END



# 1. Initial Solution

def separate_comma(number)
	int_string = number.to_s
	num_of_int = int_string.length
	num_of_commas = num_of_int / 3
	if num_of_int < 4
		return int_string
	elsif num_of_int % 3 == 0
		index = -4
		(num_of_commas - 1).times do |x|
			int_string.insert(index, ",")
			index -= 4
		end
		return int_string
	else 
		index = -4
		num_of_commas.times do |x|
			int_string.insert(index, ",")
			index -= 4
		end
		return int_string
	end
end


# 2. Refactored Solution

def separate_comma(number)
	int_string = number.to_s.reverse
	num_of_commas= int_string.length / 3
	index = 3 * num_of_commas
	num_of_commas.times do int_string.insert(index, ",")
		index -= 3
	end
	return int_string.chomp(",").reverse
end




# 3. Reflection
# What was your process for breaking the problem down? What different approaches did you consider?

# I knew I would have to find the length of the number to see how many commas I would need to add and where to add them.
# Then I thought of all the possible scenarios of where the commas would be added, and figured it would be easiest to index backwards.
# This way, they would always be added in the same starting place (index = -4) and I'd then just have to account for a comma wrongfully being added to the beginning of a number.
# I considered adding commas going forwards (using positive indexes) and in fact tried that at first, but I realized it was more difficult and required more steps.

# Was your pseudocode effective in helping you build a successful initial solution?

# I had to rewrite certain parts and start over a couple times, but otherwise it definitely helped me get started and find my way to a solution.

# What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?

# I just used .reverse and .chomp because I realized that this way I wouldn't even need an if statement. I could just add commas to the reverse and .chomp the comma if it was at the end (or beginning when it was reversed back to the right way).

# How did you initially iterate through the data structure?

# I used .times in relation to the number of commas needed and then used .insert to put the comma in the correct places.

# Do you feel your refactored solution is more readable than your initial solution? Why?

# Yes definitely. It is much shorter and has less arguments. The .reverse might throw someone off at first, but then reading to the end should make sense.
