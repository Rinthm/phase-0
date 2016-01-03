# I worked on this challenge by myself.


# Your Solution Below

def valid_triangle?(a, b, c)
	s = (a + b + c) / 2.0
	good = (s - a) * (s - b) * (s - c)
  if a <= 0 || b <= 0 || c <= 0 || good <= 0
  	return false
  end
  if a == b && b == c
  	return true
  	puts "That is an equilateral triangle."
  elsif a == b || b == c || a == c
  	return true 
  	puts "That is an isosceles triangle."
  else
  	return true  
  	puts "That is a sclene triangle."
  end
end