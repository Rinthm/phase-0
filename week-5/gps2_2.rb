# Pair: Ian Kinner
# Guide: Michael Hamel

# Method to create a list
# input: None
# Steps:
# -Create a new hash
# -Return new hash
# output: Empty hash


# Method to add an item to a list
# input: "item_name" as a string, "item_qty" as an integer.
# output: Nothing (method is destructive) 
# steps: 
# -Insert item and quantity pair into the hash


# Method to remove an item from the list
# input: "item_name"
# output: Nothing
# steps: 
# -Check if "item_name" is already present
# -IF it's already present
#   -Remove it from the hash


# Method to update the quantity of an item
# input: "item_name" and an integer
# output: Nothing
# steps: 
# -Check if "item_name" is present
# -IF not present
#   -Raise ArgumentError saying item isn't present
# -ELSE
#   -Replace "item_qty" with new value


# Method to print a list and make it look pretty
# input: The list hash
# output: A re-organized list
# steps:
# -Iterate through list hash
# -Print out items alphabetically
# -Add header to list
# -Add white space at end


# INITIAL CODE:


def create_list 
  return {}
end

def add_item(list, item, quantity)
  if list.key?(item) 
    puts "#{item} is already on the list!"
  else
    list[item] = quantity
  end
end

def remove_item(list, item)
  if !(list.key?(item))
    puts "#{item} not on list!"
  else
    list.delete(item)
  end
end

def update_quantity(list, item, quantity)
  if !(list.key?(item))
    puts "#{item} is not on the list!"
  else
    list[item] = quantity
  end
end
  
def print_list(list)
  printf("%-15s %s\n","Grocery Item","Quantity")
  puts "------------------------\n"
  list.each do |item_name, item_quantity|
    printf("%-15s %d\n",item_name, item_quantity)
  end
  puts
end
    
  
# DRIVER CODE:

grocery_list = create_list

add_item(grocery_list, "Apples", 2)
add_item(grocery_list, "Bananas", 1)
add_item(grocery_list, "Bananas", 1)
add_item(grocery_list, "Melon", 1)
remove_item(grocery_list, "Apples")
remove_item(grocery_list, "Radish")
update_quantity(grocery_list, "Bananas", 450)
update_quantity(grocery_list, "Carrots", 450)
print_list(grocery_list)

# Reflection

# What did you learn about pseudocode from working on this challenge?

# Sometimes it is difficult to keep pseudocode sounding like English rather than implementing code language.
# It was difficult to write meaningful pseudocode for each individual method. Some seemed straight-forward enough to not need pseudocode.

# What are the tradeoffs of using Arrays and Hashes for this challenge?

# I think using Hashes makes more sense as we have a list and quantity. 
# We could have used Arrays, but I think the code would have been messier and required mor formatting.

# What does a method return?

# It returns some sort of value based on what you put into the method.

# What kind of things can you pass into methods as arguments?

# Strings, arrays, integers, etc.

# How can you pass information between methods?

# By passing a method as an argument of another method.

# What concepts were solidified in this challenge, and what concepts are still confusing?

# Passing information between methods seems a little more comfortable after this challenge.
# I still feel the need to practice writing and utilizing effective pseudocode and working out more of the logic while pseudocoding rather than while coding the solution.

