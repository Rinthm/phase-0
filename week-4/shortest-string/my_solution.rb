
# Shortest String

# I worked on this challenge by myself.

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

# Your Solution Below

def shortest_string(list_of_words)
  shortest = list_of_words[0]
  for word in 1...list_of_words.length
    if shortest.length > list_of_words[word].length then
      shortest = list_of_words[word]
    end
  end
  return shortest
end
