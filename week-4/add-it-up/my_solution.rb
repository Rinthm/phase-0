# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge with: Emmet Susslin.

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: 
# Output:
# Steps to solve the problem.


# 1. total initial solution

def total(numbers)
	sum = 0
	numbers.each do |x|
		sum += x.to_f
	end
	return sum
end

# 3. total refactored solution

def total(numbers)
	numbers.inject(:+)
end

# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input:
# Output:
# Steps to solve the problem.


# 5. sentence_maker initial solution

def sentence_maker(words)
	string = ""
	words.each do |x|
		string = string + x.to_s + " "
	end
	return string.capitalize.strip + "."
end

# 6. sentence_maker refactored solution

def sentence_maker(words)
	words.join(" ").capitalize << "."
end
