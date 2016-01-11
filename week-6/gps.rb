# Your Names
# 1) Akeem Street
# 2) Aaron Opsahl

# We spent 2 hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_ingredients)
  # establishes library 
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7} 
  
  # raises error if item_to_make is not in library
  raise ArgumentError.new("#{item_to_make} is not a valid input") unless library.include?(item_to_make)
  # ALSO WORKS: raise ArgumentError.new("#{item_to_make} is not a valid input") unless library[item_to_make]
  
  # calculates serving size and remaining ingredients based on input
  serving_size = library[item_to_make]
  remaining_ingredients = num_of_ingredients % serving_size
  
  # tells user how many servings they can make of an item, or how many they can make AND leftover ingredients with baking suggestions
  if remaining_ingredients == 0
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
  elsif remaining_ingredients < 5 
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. You could make cookies!"
  elsif remaining_ingredients % 5 == 0
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. You can make a cake or five cookies!"
  elsif remaining_ingredients == 6
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. You can make a cake and a cookie or six cookies!"
  # elsif remaining_ingredients % 7 == 0
  #   return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. You can make a pie!"
  end
end

# Driver code

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection

# What did you learn about making code readable by working on this challenge?

# I learned that it's good to make shorter code, but not so small that it sacrificies function or readability.
# The last IF loop may have been able to be compacted, but we couldn't think of another way that would still give good baking suggestions.

# Did you learn any new methods? What did you learn about them?

# We didn't use any methods that I haven't seen or used before.

# What did you learn about accessing data in hashes?

# You can access the value by just specifying the key in the hash, like this: "hash[key] => value". I had forgotten that prior to this challenge.
# Also, you don't need to specify the keys when calling the '.include?' method on a hash. It is implied.

# What concepts were solidified when working through this challenge?

# IF loops are better than CASE loops when you have multiple conditions that don't directly equate to certain object.
# Also, badly written code can make it really difficult for a reader to decipher the function of your code. 
# It took me a while to figure out WTF was going on with the error_counter in the original code of this challenge. It was totally useless and distracting! 