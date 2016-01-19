# Virus Predictor

# I worked on this challenge with: Matthew Baquerizo.
# We spent 2 hours on this challenge.

# EXPLANATION OF require_relative
# Uses data from the required file (state_data) which is located in the same folder.

require_relative 'state_data'

class VirusPredictor
  
  # Creates a new instance of VirusPredictor that takes 3 arguments state_of_origin, population_density, population, and saves them as instance variables.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  
  # Outputs the result of the predicted_deaths and speed_of_spread methods
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
  
  # Calculates predicted deaths based on population density and population and returns an integer for number of deaths, prints string with number of deaths
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # Calculates speed of spread based on population density as a float and puts a string with the speed
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE

# initialize VirusPredictor for each state
STATE_DATA.each do |state, data|
  states = VirusPredictor.new(state, data[:population_density], data[:population])
  states.virus_effects
end


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects





#=======================================================================
# Reflection Section

=begin

What are the differences between the two different hash syntaxes shown in the state_data file?
  
  One is a string and the other is a symbol. Strings are mutable, meaning you can change them after
  assignment. Symbols are immutable, so you can't change them after assignment. Once a symbol is 
  created, it maintains its object id whenever called, and thus takes up less space. A string will 
  create a new object id every time it is called.

What does require_relative do? How is it different from require?

  It indicates that it will be referring to and/or using data from another file. 'require_relative'
  will load a file with a path that is relative to the file you call it in, whereas 'require' will 
  load a file with a path relative to your current working directory.

What are some ways to iterate through a hash?

  By using methods like #each, #map, etc. and then calling the strings/symbols you would like to reach.

When refactoring virus_effects, what stood out to you about the variables, if anything?
  
  The arguments were totally unnecessary because they were already gathered as instance variables in 
  the #initialize method, and #predicted_deaths and #speed_of_spread could just be called on their own
  for the same reason.

What concept did you most solidify in this challenge?

  I think the concept of iterating over hashes with #each. I already had a decent grasp beforehand, but
  iterating while initializing the class was new to me. Also, the usefulness of storing data in a separate
  file and using 'require_relative' was solidified.

=end