# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# # attempts:
# # ============================================================
p hash[:outer][:inner]["almost"][3]


# # ============================================================


# # Hole 3
# # Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# # attempts:
# # ============================================================
p nested_data[array:]["array"][hash:]
p nested_data[array:][1][hash:]
p nested_data[:array][1][:hash]


# # ============================================================

# # RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.map! do |element|
  if element.kind_of?(Array)
    element.map! do |element|
      element += 5
    end
  else
    element += 5
  end
end

# number_array.each {|element| number_array[element] += 5}

p number_array

# # Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.map! do |element|
  if element.kind_of?(Array)
    element.map! do |element|
      if element.kind_of?(Array)
         element.map! do |element|
            element += "ly"
         end
           else
    element += "ly"
    end
      end
  else
    element += "ly"
  end
end


p startup_names

# # Reflection:

# What are some general rules you can apply to nested arrays?

# Nested arrays are still treated as an element of it's 'parent' array.
# You can still iterate over the nested arrays using #each.
# Using 'puts' is a good way to print out each element of a nested array regradless of how many arrays are within the array.

# What are some ways you can iterate over nested arrays?

# By using methods like #each or #map, then using #kind_of? to further iterate.
# If you want to print out each element separately, use 'puts'.

# Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?

# I wasn't previously familiar with #kind_of?. Otherwise, we used #map! which I was already familiar with.
# We decided #map! was preferable over #each because it was destructive, which was specified in the instructions.
