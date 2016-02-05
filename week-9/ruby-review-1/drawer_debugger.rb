# Drawer Debugger

# I worked on this challenge [with: Cody, Heather].
# I spent 1.5 hours on this challenge.

# Original Code

class Drawer

  attr_reader :contents

# Are there any more methods needed in this class?

  def initialize
    @contents = []
    @open = true
  end

  def open
    @open = true
  end

  def close
    @open = false
  end

  def add_item(item)
    @contents << item
  end

  def remove_item(item = @contents.pop) #what is `#pop` doing?
    @contents.delete(item)
  end
  
  def dump  # what should this method return?
    puts "Your drawer is empty."
    @contents = []
  end

  def view_contents
    puts "The drawer contains:"
    @contents.each {|silverware| puts "- " + silverware.utensil }
  end
  
  
end

class Silverware
   attr_reader :utensil

   # Are there any more methods needed in this class?

  def initialize(utensil, clean = true)
    @utensil = utensil
    @clean = clean
  end

  def eat
    puts "eating with the #{utensil}"
    @clean = false
  end
  
  def clean_silverware
    @clean = true
  end
  
  def clean
    @clean = false
  end
  
end



# DO NOT MODIFY THE DRIVER CODE UNLESS DIRECTED TO DO SO
knife1 = Silverware.new("knife")

silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1)
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork"))
silverware_drawer.view_contents

silverware_drawer.remove_item
silverware_drawer.view_contents
sharp_knife = Silverware.new("sharp_knife")


silverware_drawer.add_item(sharp_knife)

silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean_silverware
raise Exception.new("Your silverware is not actually clean!") unless removed_knife.clean_silverware == true

silverware_drawer.view_contents
silverware_drawer.dump
raise Exception.new("Your drawer is not actually empty") unless silverware_drawer.contents.empty?
silverware_drawer.view_contents

# What will you need here in order to remove a spoon? You may modify the driver code for this error.
spoon = Silverware.new("spoon")
silverware_drawer.add_item(spoon)

raise Exception.new("You don't have a spoon to remove") unless silverware_drawer.contents.include?(spoon)
silverware_drawer.remove_item(spoon) #What is happening when you run this the first time?
spoon.eat
puts spoon.clean #=> this should be false

# DRIVER TESTS GO BELOW THIS LINE





# Reflection
# What concepts did you review in this challenge?
#   We reviewed error messages and close reading of the code and errors. For a couple of these,
#   we really had to look carefully at how things were worded.

# What is still confusing to you about Ruby?
#   I don't feel confused by Ruby. I just know that I'm not fluent in it and I have to practice
#   a lot more to get really comfortable. But at this point, I feel like I know how to get started
#   and what I need to do, as long as I can take it one step at a time.

# What are you going to study to get more prepared for Phase 1?
#   I'd really like to spend a few more hours on Codecademy or Rubeque before Monday. I feel like I
#   need to exercise the Ruby muscles more in order to get faster/better.