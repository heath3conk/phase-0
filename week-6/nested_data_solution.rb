# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================

p array[1][1][2][0]

# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================

p nested_data[:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]


number_array.map! { |element| 
  if element.kind_of?(Array)
    element.map!{|inner| inner += 5}
  else
    element += 5
  end
  }
p number_array


# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.map! { |element| 
  if element.kind_of?(Array)
    element.map!{|inner| if inner.kind_of?(Array)
      inner.map! { |innerer| 
        innerer = innerer + "ly"}
      else
      inner += "ly"
      end }
  else
    element += "ly"
  end
  }
p startup_names


=begin
Reflection:
What are some general rules you can apply to nested arrays?
	Each array in the hierarchy still acts like an array. When we tried
	the bonus Release 4, we got an error about adding a string to a non-string
	object and, when we forced it using .to_s, we figured out that we were 
	adding "ly" to the inner-most array (which totally works but not the way we
	wanted it to). So the lesson there was, consider why you're getting an error
	that doesn't seem to make sense!

What are some ways you can iterate over nested arrays?
	We tried solutions using each, map and map! 

Did you find any good new methods to implement or did you re-use one you were 
already familiar with? What was it and why did you decide that was a good option?
	The kind_of? method was new. I think I've used each, map and map! before. We 
	went with map! in the end because the instructions specified that we were to 
	modify the original array so we needed a destructive method.
	
=end
