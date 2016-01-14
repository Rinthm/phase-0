# Class Warfare, Validate a Credit Card Number


# I worked on this challenge with: Timothy Beck.
# I spent 2 hours on this challenge.

# Pseudocode

# Input: 16 digit integer - return ArgumentError if not exactly 16 digits
# Output: True or false when #check_card is run on class CreditCard
# Steps: 
# Take integer as input - if it is != 16 then return ArgumentError "not a valid credit card number"
#   Create instance variable with credit card number
# Define check_card method
# Starting with the first number, double every other number (1, 3, 5, 7, etc)
# Add all the numbers together, no two-digit numbers (10 = 1 + 0)
# If number % 10 == 0, return true
# Else return false


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard
  
  attr_accessor :card_num
  
  def initialize(card_num)
    raise ArgumentError.new("Not a valid credit card number!") if card_num.to_s.size != 16
    @card_num = card_num
  end

  def check_card
    og_card_array = @card_num.to_s.split('')  #gives array of the numbers, as strings
    doubled_array = og_card_array.select.with_index { |_, i| i.even? } #might switch to even - use spec
    single_array = og_card_array.select.with_index { |_, i| i.odd? }
    doubled_array.map! { |num| num.to_i * 2 }
    real_doubled_array = doubled_array.join.chars.map!(&:to_i)
    
    doubled_sum = 0
    real_doubled_array.map! { |x| doubled_sum += x }
    single_array.map! { |num| num.to_i }
    
    single_sum = 0
    single_array.each { |x| single_sum += x }
    
    sum = doubled_sum + single_sum
    
    if sum % 10 == 0
      puts "Congratulations! Card accepted!"
      return true
    else
      puts "Not a valid credit card"
      return false
    end

  end

end

# Refactored Solution
  
class CreditCard
  
  attr_accessor :card_num
  
  def initialize(card_num)
    raise ArgumentError.new("Not a valid credit card number!") if card_num.to_s.size != 16
    @card_num = card_num
  end


  def check_card
    og_card_array = @card_num.to_s.split('')  #gives array of the numbers, as strings
    array_to_double = og_card_array.select.with_index { |_, i| i.even? } #this pulls every other number starting with the first, to be doubled
    single_array = og_card_array.select.with_index { |_, i| i.odd? } #this pulls every other number starting with the second and puts it into an array
    array_to_double.map! { |num| num.to_i * 2 }
    doubled_array = array_to_double.join.chars.map!(&:to_i) #this creates an array with double-digit numbers broken out
    
    sum = 0
    doubled_array.map! { |x| sum += x }
    single_array.map! { |num| num.to_i }
    single_array.each { |x| sum += x }
    
    if sum % 10 == 0
      puts "Congratulations! Card accepted!"
      return true
    else
      puts "Not a valid credit card"
      return false
    end

  end

end

# Driver Code
new_card = CreditCard.new(4408041234567901)
p new_card.check_card
bad_card = CreditCard.new(4408041234567906)
p bad_card.check_card
# definitely_fake = CreditCard.new(27965)
# p definitley_fake.check_card

# Reflection

# What was the most difficult part of this challenge for you and your pair?

# Figuring out the process for splitting up the doubled integers and adding them 
# together was difficult. We definitely had to do some research to figure it out.

# What new methods did you find to help you when you refactored?

# We actually didn't find any new methods while refactoring because we did 
# research when we got stuck in our initial solution. Nonetheless, we found the 
# #select and #with_index methods to select every other integer.
# We found the #join and #chars methods to split up the 2-digit numbers.

# What concepts or learnings were you able to solidify in this challenge?

# This challenge solidified my understanding of how Classes work in general.
# I feel a lot more comfortable with attributes and defining methods within a Class.