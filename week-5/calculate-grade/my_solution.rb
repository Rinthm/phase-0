# Calculate a letter grade!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge by myself.

# 0. Pseudocode

# What is the input? An array of integers.
# What is the output? A string with a letter grade based on the average of the integers in the array.
# What are the steps needed to solve the problem?
# -Define a method that accepts an array as an argument
# -IF the array contains anything that is not an integer between 0 and 100:
# 	-Raise an ArgumentError that says "Integers only please!"
# -ELSE
# 	-Find the average of the integers
# RETURN 'A' if the average is >= 90, a 'B' if the average is between 80 (inclusive) and 90 (noninclusive), etc. to 'F'



# 1. Initial Solution

def get_grade(grades)
	grades.each do |grade|
		unless grade.is_a?(Integer) && 0 <= grade && grade <= 100
			raise ArgumentError.new("Integers between 0 and 100 only please!")
		end
	end
	num_of_grades = grades.count
	sum = 0
	grades_total = grades.each { |num| sum += num.to_f }
	avg_grade = sum / num_of_grades
	if avg_grade >= 90
		p "You averaged #{avg_grade}%, which is an A."
		return "A"
	elsif 80 <= avg_grade && avg_grade < 90
		p "You averaged #{avg_grade}%, which is a B."
		return "B"
	elsif 70 <= avg_grade && avg_grade < 80
		p "You averaged #{avg_grade}%, which is a C."
		return "C"
	elsif 60 <= avg_grade && avg_grade < 70
		p "You averaged #{avg_grade}%, which is a D."
		return "D"
	elsif avg_grade && avg_grade < 60
		p "You averaged #{avg_grade}%, which is an F."
		return "F"
	end
end

# 3. Refactored Solution

# Bare minimum:

def get_grade(grades)
	avg_grade = grades.reduce(:+).to_f / grades.length
	case avg_grade
		when 90..100 then "A"
		when 80..89 then "B"
		when 70..79 then "C"
		when 60..69 then "D"
		when 0..59 then "F"
	end
end

# Still with informative print statments and check for proper input:

def get_grade(grades)
	grades.each do |grade|
		unless grade.is_a?(Integer) && 0 <= grade && grade <= 100
			raise ArgumentError.new("Integers between 0 and 100 only please!")
		end
	end
	avg_grade = grades.reduce(:+).to_f / grades.length
	case avg_grade
		when 90..100 then 
			p "You averaged #{avg_grade}, which is an A."
			return "A"
		when 80..89 then 
			p "You averaged #{avg_grade}, which is a B."
			return "B"
		when 70..79 then 
			p "You averaged #{avg_grade}, which is a C."
			return "C"
		when 60..69 then 
			p "You averaged #{avg_grade}, which is a D."
			return "D"
		when 0..59 then 
			p "You averaged #{avg_grade}, which is an F."
		return "F"
	end
end

# Driver code

grades = [1, 100, 90, 100, 95]
get_grade(grades)

grades_string_fail = [1, 100, 90, 100, "F"]
get_grade(grades_string_fail)

grades_int_fail = [1, 100, 90, 100, 105]
get_grade(grades_pos_int_fail)

grades_neg_int_fail = [1, 100, 90, 100, -10]
get_grade(grades_neg_int_fail)

# 4. Reflection

# I did it! :)