# Analyze the Errors

# I worked on this challenge by myself.
# I spent 1.5 hours on this challenge.

# --- error FIXED -------------------------------------------------------

# cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error FIXED -------------------------------------------------------

# def cartman_hates(thing)
#   while true
#     puts "What's there to hate about #{thing}?"
#   end
# end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# errors.rb
# 2. What is the line number where the error occurs?
# The interpreter says line 170, but really it's line 16 where there is a lack of an end for the while loop.
# 3. What is the type of error message?
# Syntax error.
# 4. What additional information does the interpreter provide about this type of error?
# It wasn't expecting an end of input, rather a keyword end.
# 5. Where is the error in the code?
# In the while loop.
# 6. Why did the interpreter give you this error?
# There needs to be an end for the while loop.

# --- error FIXED -------------------------------------------------------

# def south_park()
# end

# 1. What is the line number where the error occurs?
# Line 36. (This is after fixing previous code; the line numbers in the following exercises will be offset due to fixes)
# 2. What is the type of error message?
# In '<main>'; NameError.
# 3. What additional information does the interpreter provide about this type of error?
# Undefined local variable or method 'south_park'.
# 4. Where is the error in the code?
# It is in the south_park method.
# 5. Why did the interpreter give you this error?
# The south_park method needs to be defined properly.

# --- error FIXED -------------------------------------------------------

# def cartman()
# end

# 1. What is the line number where the error occurs?
# Line 52.
# 2. What is the type of error message?
# In '<main>'; NoMethodError.
# 3. What additional information does the interpreter provide about this type of error?
# Undefined method 'cartman'.
# 4. Where is the error in the code?
# In the cartman() method.
# 5. Why did the interpreter give you this error?
# cartman() needs to be defined properly.

# --- error FIXED -------------------------------------------------------

# def cartmans_phrase(phrase)
#   puts "I'm not fat; I'm big-boned!"
# end

# cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# Line 68.
# 2. What is the type of error message?
# In 'cartmans_phrase'; ArgumentError. 
# 3. What additional information does the interpreter provide about this type of error?
# Wrong number of arguments (1 for 0).
# 4. Where is the error in the code?
# In the cartmans_phrase method.
# 5. Why did the interpreter give you this error?
# The cartmans_phrase method needs to be able to accept at least one argument.

# --- error FIXED -------------------------------------------------------

# def cartman_says(offensive_message)
#   puts offensive_message
# end

# cartman_says("Screw you guys, I'm goin home!")

# 1. What is the line number where the error occurs?
# Line 87.
# 2. What is the type of error message?
# Argument Error.
# 3. What additional information does the interpreter provide about this type of error?
# Wrong number of arguments (0 for 1).
# 4. Where is the error in the code?
# It's actually on line 91.
# 5. Why did the interpreter give you this error?
# Because there wasn't an argument given in cartman_says.



# --- error FIXED -------------------------------------------------------

# def cartmans_lie(lie, name)
#   puts "#{lie}, #{name}!"
# end

# cartmans_lie('A meteor the size of the earth is about to hit Wyoming', 'Mr. Garrison')

# 1. What is the line number where the error occurs?
# Line 108.
# 2. What is the type of error message?
# Argument Error.
# 3. What additional information does the interpreter provide about this type of error?
# Wrong number of arguments (1 for 2).
# 4. Where is the error in the code?
# It is in the argument on line 112.
# 5. Why did the interpreter give you this error?
# There needs to be 2 arguments given in cartmans_lie instead of just 1.

# --- error FIXED -------------------------------------------------------

# 5.times do 
# 	puts "Respect my authoritay!"
# end

# 1. What is the line number where the error occurs?
# Line 127.
# 2. What is the type of error message?
# Type Error.
# 3. What additional information does the interpreter provide about this type of error?
# String can't be coerced into Fixnum.
# 4. Where is the error in the code?
# It's the attempted multiplication.
# 5. Why did the interpreter give you this error?
# You can't do arithmetic with an integer and a string.

# --- error FIXED -------------------------------------------------------

# amount_of_kfc_left = 20/1


# 1. What is the line number where the error occurs?
# Line 144.
# 2. What is the type of error message?
# Zero Division Error.
# 3. What additional information does the interpreter provide about this type of error?
# Divided by 0.
# 4. Where is the error in the code?
# In the 20/0.
# 5. Why did the interpreter give you this error?
# You can't divide by 0.

# --- error -------------------------------------------------------

# require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# Line 160.
# 2. What is the type of error message?
# Load Error.
# 3. What additional information does the interpreter provide about this type of error?
# Cannot load such file.
# 4. Where is the error in the code?
# in the require_relative function.
# 5. Why did the interpreter give you this error?
# It can't load the file because the file doesn't exist.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

# Which error was the most difficult to read?

# I think the most difficult error to read was the first one (on line 13) because it says 
# the error is on line 170 even though an 'end' should more likely occur on line 16.

# How did you figure out what the issue with the error was?

# Some by reading the output in Terminal and some just by looking at the code.

# Were you able to determine why each error message happened based on the code? 

# Yes, it was pretty straight-forward.

# When you encounter errors in your future code, what process will you follow to help you debug?

# Looking at line number, type of error, description of error, and common sense for why the error occurred.
