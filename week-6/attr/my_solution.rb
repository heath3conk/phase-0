#Attr Methods

# I worked on this challenge by myself.

# I spent 1.25 hours on this challenge.

# Pseudocode

# Input: no input - this is basically driven by the class and driver code. In other words,
#     there are no arguments passed into any methods
# Output: A personalized greeting addressed to the name in NameData

# Steps:
# => create a method in NameData that returns my name
# => create a method in Greetings that creates a new instance of NameData
# => create another method in Greetings that prints a personalized message

class NameData
  def initialize
  	@name = "Heather"
  end

  def return_name
  	@name
  end

end


class Greetings
  def initiliaze
  	@say_hi = NameData.new
  end

  def hello
    puts "Hello, #{NameData.new.return_name}! How wonderful to see you today."
    

    # puts "Hello, #{@say_hi.return_name}! How wonderful to see you today."
    # => I'd love it if someone could explain to me why line 39 raises a NoMethodError
    # => but line 36 does not. 

  end
end

greet = Greetings.new
greet.hello

=begin
# Reflection
RELEASE 1/0 REFLECTION
What are these methods doing?
  Each one is either getting or setting values for instance variables. The setters are initialize
  and all the "change_my_age" (or whatever) methods; the getters are print_info and the "what_is" 
  methods. 

How are they modifying or returning the value of instance variables?
  They're returning values by referring to the instance variables. Those methods, like what_is_age,
  will return whatever the most recent value of @age is. 

  The ones that are changing the instance variables are doing so by referring to them and then 
  setting them equal to a new value. When the driver code calls instance_of_profile.change_my_age=28,
  the value of @age is reset to equal 28 and any time another method uses that insance variable, it
  will be acting on 28 and not 27.

RELEASE 2/1 REFLECITON
What changed between the last release and this release?
  There's an attribute reader for the @age instance variable. 

What was replaced?
  The attr_reader replaces the what_is_age method. As a result, the driver code to access the age is
  also different: instance_of_profile.age.

Is this code simpler than the last?
  It seems to be simpler. It's certainly shorter and clearer.


RELEASE 3/2 REFLECTION
What changed between the last release and this release?
  There's now also an attribute writer for @age.

What was replaced?
  The attr_writer replaces the change_my_age method and the driver code is also changed so that it's
  now instance_of_profile.age = 28 (differentiated from the getter version of this with the = 28).

Is this code simpler than the last?
  Yes, shorter still and it's clearer since there's basically a method that accesses the @age 
  variable and you differentiate the setter from the getter by either including an = new_value or not.


RELEASE 6 REFLECTION
What is a reader method?
  It's a method whose sole purpose is to get the value of a variable.

What is a writer method?
  A methos whose sole purpose is to set the value of a variable.

What do the attr methods do for you?
  They allow you to set and get variables more economically than by using multi-line methods.

Should you always use an accessor to cover your bases? Why or why not?
  No. If you use an attr_accessor, that means that someone could both read the current value of a
  variable and also change it. Some variables should not be changed so easily by a user. 

What is confusing to you about these methods?
  Seeing symbol syntax in the attr_reader/attr_writer/attr_accessor code and then instance
  variable syntax elsewhere is confusing.

=end