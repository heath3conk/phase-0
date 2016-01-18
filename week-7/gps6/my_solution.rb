# Virus Predictor

# I worked on this challenge Jenna El-Amin.
# We spent 1.5 hours on this challenge.


# EXPLANATION OF require_relative
# see reflection...

require_relative 'state_data'

class VirusPredictor
  # args => instance variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  # invokes methods with the args given
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  def all_states
    # iterate through the STATE_DATA hash 
     #   run virus_effects for each state
    STATE_DATA.each do |state, data| 
      @state = state
      @population_density = data[:population_density]
      @population = data[:population]
      self.virus_effects
    end
  end
  
  
  private
  # calculates number_of_deaths based on population_density
  def predicted_deaths
    # predicted deaths is solely based on population density
    # if @population_density >= 200
    #   number_of_deaths = (@population * 0.4).floor
    # elsif @population_density >= 150
    #   number_of_deaths = (@population * 0.3).floor
    # elsif @population_density >= 100
    #   number_of_deaths = (@population * 0.2).floor
    # elsif @population_density >= 50
    #   number_of_deaths = (@population * 0.1).floor
    # else
    #   
    case @population_density    
      when 51..100
        number_of_deaths = (@population * 0.1).floor
      when 101..150      
        number_of_deaths = (@population * 0.2).floor
      when 151..200
        number_of_deaths = (@population * 0.3).floor
      when 201..50000
        number_of_deaths = (@population * 0.4).floor
      else
        number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # calculates speed of spread based on population_density
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

#     if @population_density >= 200
#       speed += 0.5
#     elsif @population_density >= 150
#       speed += 1
#     elsif @population_density >= 100
#       speed += 1.5
#     elsif @population_density >= 50
#       speed += 2
#     else
#       speed += 2.5
#     end
    
    case @population_density    
      when 51..100
        speed += 2
      when 101..150      
        speed += 1.5
      when 151..200
        speed += 1
      when 201..50000
        speed += 0.5
      else
        speed += 2.5
    end
 

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects

alabama.all_states

=begin
#=======================================================================
# Reflection Section
What are the differences between the two different hash syntaxes shown in the state_data file?
  The first layer, where the keys are the states names, the key is a string and the operator to set a 
  value to that key is =>. In the second layer, the keys are symbols and their values are set using 
  the syntax for symbols, namely population_density: 1016.

What does require_relative do? How is it different from require?
  Both allow you to access stuff (information, classes, methods) in your current file/Class/method/etc
  that's in a different file. require_relative indicates that the other file is specifically related to
  this one, usually in the same folder (although it doesn't have to be). Using require instead of 
  require_relative, Ruby will search for the file named along its drive path.

What are some ways to iterate through a hash?
  We considered using the each or the each_key method here.

When refactoring virus_effects, what stood out to you about the variables, if anything?
  The repetition of the variables stood out to us. We decided that, since they were instance variables,
  we didn't need to have them as arguments for any of those methods (virus_effects, predicted_deaths or
  speed_of_spread).

What concept did you most solidify in this challenge?
  I'm getting more comfortable with the nested hashes and accessing the data in them. Also with calling
  one method inside another.

=end