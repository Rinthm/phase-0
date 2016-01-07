# Calculate the mode Pairing Challenge

# I worked on this challenge with Peter Leong.

# I spent 1 hour on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? An array
# What is the output? (i.e. What should the code return?) A mode of the original array
# What are the steps needed to solve the problem?
# -Define a method "mode" that accepts an array as input.
# -Create an empty hash.
# -Create a counter.
# -Each time a value occurs in the original array, increase counter and add to the empty hash.
# -Find the largest value(s) in the hash and return the associated keys in a new array.


# 1. Initial Solution
=begin
def mode(array)
  mode_array = []
  counter = Hash.new(0)
  array.each { |x| counter[x] += 1}
  counter.each do |k, v|
    if v == counter.values.max
      mode_array << k
    end
  end
  return mode_array
end
=end

# 3. Refactored Solution
def mode(array)
  mode_array = []
  counter = Hash.new(0)
  array.each { |x| counter[x] += 1}
  counter.each do |k, v|
    if v == counter.values.max
      mode_array << k
    end
  end
  return mode_array
end
   
#Driver Code
=begin
array = ["who", "what", "where", "who"]
p mode(array)
array_2 = [1,2,3,3,2]
p mode (array_2)
=end


# 4. Reflection
# Which data structure did you and your pair decide to implement and why?

# We decided to use a hash because we knew we could pair the keys with their frequency values. 
# When refactoring we attempted to use just arrays, and I think we got pretty close, but ultimately couldn't get a working solution.
# We got it to return an array with the mode values, but it repeated them and didn't work with strings.

# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 

# Yes, this challenge went a lot smoother and quicker than with my previous pair. We communicated better and I think we had a better 
# understanding of processes because of previous experiences and challenges.

# What issues/successes did you run into when translating your pseudocode to code?

# We were pretty successful translating our pseudocode into code right off the bat, but did have to change a few things.
# We ended up making the counter equal the new hash, which combined steps. We had to do more brainstorming on finding the maximum value.

# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?

# We used Hash.new(0) to create an empty hash with 0 as the default value.
# We used .each to iterate over the array and hash.
# We used .values to search through the hash values and .max to find the maximum value.
# We used << to put the key associated with the maximum value into a new array.
# While refactoring, we tried using .count so we could circumventing using a hash. 
# Then we tried using .index with a block as a last ditch effort to get the maximum value of the array, alas to no avail.
# Ultimately we couldn't think of any ways to further refactor our initial solution. I guess we killed it right off the bat! 
    
    