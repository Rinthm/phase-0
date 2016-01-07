# Research Methods

# I spent 2 hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 3
def my_array_sorting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_sorting_method(source)
   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
# Input: An array and a letter.
# Output: Original array with strings containing letter deleted.
# Steps: 
  # -Iterate over the array.
  # -IF an element contains the letter
  #   -Delete that element
  # -ELSE 
  #   -Keep that element
  # -RETURN the array with deleted elements 
def my_array_deletion_method!(source, thing_to_delete)
  source.reject! { |x| x.to_s.include?(thing_to_delete) }
end

# I knew the following was going to be so similar to my_array_deletion_method! that I didn't feel 
# the need to pseudocode again.
def my_hash_deletion_method!(source, thing_to_delete)
  source.reject! { |k, v| k.to_s.include?(thing_to_delete) }
end

## Identify and describe the Ruby method(s) you implemented:
# .reject!{} - Returns an array for which the given block returns false, and does so destructively.

# .to_s - Converts attached element to a string. It took me forever to realize that not including 
# this was causing me to fail the rspec tests...

# .include?() - Returns true if any of the specified characters are contained in the attached element.

## How to use each method:
# .reject!{} - Attach this method to the element you want to delete from (include the bash if you want 
# it to be destructive, omit it if you want it to be non-destructive), then give it an argument based
# on what you would like to remove.

# .to_s - Attach this method to an element you want to be converted into a string.

# .include?() - Attach this method to an element you want to check the contents of, then put the thing
# you want to check for in the parentheses.

## Tricks to decipher Ruby Docs:
# I found it helpful to start with the type of class I am working with (e.g. array, hash, etc.).
# Then I search the 'Methods' menu on the left for keywords that might fit with what I'm trying to do.
# I usually end up just going to the class and scrolling down until I see something that might work.
# I think this will help down the road because I'll skim over a bunch of methods I can come back to.

# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#