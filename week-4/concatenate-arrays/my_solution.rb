# Concatenate Two Arrays

# I worked on this challenge by myself.


# Your Solution Below

# Iteration:
def array_concat(array_1, array_2)
  for i in 0...array_2.length
    array_1[array_1.length + i] = array_2[i];
  end
  return array_1;
end

# Array methods:
def array_concat(array_1,array_2)
  array_1.concat(array_2);
end