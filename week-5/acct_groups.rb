# Release 1: Pseudocode

# Input: Array of people in cohort
# Output: Accountability groups of 3-5 people in separate arrays.
# Steps:
# -Define a method that accepts an array of strings
# -Count the number of elements in the array
# -Randomize elements in the array.
# -Find number of new arrays needed
# 	-IF the number of elements in the array % 5 == 0
# 		-Number of new arrays needed is (original array elements / 5)
# 	-ELSE
# 		-(original array elements / 5) + 1
# -Create new arrays
# -Fill new arrays with people with a maximum size of 5 and a minimum size of 3.
# -Return the new arrays.

# Release 2: Initial solution

def acct_groups(cohort)
	people = cohort.size
	cohort.shuffle
	if people % 5 == 0
		array_num = (people / 5)
	else
		array_num = (people / 5) + 1
	end
	new_groups = Array.new(array_num) {Array.new}
	x = 0
	y = 0
	while x < people
		while y < array_num
			new_groups[y] << cohort[x]
			x += 1
			y += 1
		end
		y = 0
	end
	p new_groups
end

# Release 4: Refactor

def acct_groups(cohort)
	people = cohort.size
	if people % 5 == 0 || people % 5 == 3 || people % 5 == 4
		new_groups = cohort.shuffle.each_slice(5).to_a
	elsif people % 4 == 0 || people % 4 == 1 || people % 4 == 3
		new_groups = cohort.shuffle.each_slice(4).to_a
	end
	if new_groups.last.size == 1
		new_groups.first << new_groups.pop[0]
	end
	p new_groups
end

# Release 5: Driver code

acct_groups(["Dong Wook Seo", "Aaron Hu", "Adam Pinsky", "Akeem Street", "Alex Forger", "Andrew Kim", "Baron Kwan", "Brian Bier", "Byron Gage", "Carl Conroy", "Charlie Bliss", "Christopher Bunkers", "Cody Kendall", "Coline Forde", "David Valencia", "Emily Claire Bosakowski", "Everett Golden", "Hagai Zwick", "Heather Conklin", "Ian Wudarski", "Ieronim Oltean", "Jake Hamilton", "James Boyd", "Jasmeet Chatrath", "Jenna El-Amin", "Jerrie Evans", "Joe Case", "Jonathon Case", "Jonathon Schwartz", "Jonathon Silvestri", "Kathryn Garbacz", "Ian Kinner", "Kyle Cierzan", "Kyle Zelman", "Linda Oanh Ho", "Yiorgos Makridakis", "Matt Harris", "Matthew Baquerizo", "Menuka Samaranayake", "Michael Pintar", "Mollie Stein", "Lydia Nash", "Aaron Opsahl", "Peter Leong", "Peter Stratoudakis", "Prince Sadie", "Ryan F. Salerno", "Sanderfer Chau", "Sarah Finken", "Emmet Susslin", "Sydney Rossman-Reich", "Eric Tenza", "Thomas Yancey", "Tim Kelly", "Timothy Beck", "Tyler Doerschuk"])

# Release 6: Reflect

# What was the most interesting and most difficult part of this challenge?

# The most interesting part was how much simpler the pseudocode was in relation to writing the actual code. It's usually the other way around. 
# The most difficult part was definitely figuring out how to split people up into new arrays that were between 3-5 people.

# Do you feel you are improving in your ability to write pseudocode and break the problem down?

# I actually think I lost a bit of confidence in my pseudocode in this assignment. I wrote it our faster but it proved less helpful when coding.
# I ended up having to add code not specified in the pseudocode when I worked on my initial solution.

# Was your approach for automating this task a good solution? What could have made it even better?

# I think it ended up being a good solution once I figured out some syntax by researching. 
# I could have made it better by taking a bit more time to further break down the last few steps in my pseudocode.

# What data structure did you decide to store the accountability groups in and why?

# I decided to stick with arrays. I thought it would be simpler and I can't think of a way to do it with other data structures.

# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?

# I learned the .each_slice() method that takes a data structure and splits it up into substructures of a specified size.
# I also learned that while my refactored solution may be a bit more compact and simpler, it's result is less desirable than my initial solution.
# My initial solution splits up the groups more evenly and has a minimum size of 4 people. It is possible to have a group of 3 in my refactored solution.

