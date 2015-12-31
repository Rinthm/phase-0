# Calculate a Grade

# I worked on this challenge [by myself, with: ].


# Your Solution Below

def get_grade(num)
    if num.to_i >= 90
        return "A"
    elsif num.to_i >= 80
        return "B"
    elsif num.to_i >= 70
        return "C"
    elsif num.to_i >= 60
        return "D"
    else num.to_i < 60
        return "F" 
    end
end