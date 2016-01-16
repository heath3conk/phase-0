# Your Names
# 1) Heather Conklin
# 2) Brian Bier

# We spent 1.5 hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_ingredients)
  menu = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  if menu.include?(item_to_make)
    serving_size = menu.values_at(item_to_make)[0]
      remaining_ingredients = num_of_ingredients % serving_size
  else
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  # figure out if the remaining ingredients is evenly divisible by 
  # either 5 or 7, if so, make either cake(s) or pie(s). if not,
  # make more cookies
  
  initial_plan = "Calculations complete: Make #{num_of_ingredients / serving_size} #{item_to_make}(s). "
  
  if remaining_ingredients == 0
      puts initial_plan
    elsif remaining_ingredients % 5 == 0 
      puts initial_plan +
      "You have #{remaining_ingredients} leftover ingredients. Suggested baking items: #{remaining_ingredients/5} cake(s)"
    elsif remaining_ingredients % 7 == 0
      puts initial_plan + 
      "You have #{remaining_ingredients} leftover ingredients. Suggested baking items: #{remaining_ingredients/7} pie(s)"
    else 
      puts initial_plan + 
      "You have #{remaining_ingredients} leftover ingredients. Suggested baking items: #{remaining_ingredients} cookie(s)"
  end
  
  
end

serving_size_calc("pie", 7)
serving_size_calc("pie", 8)
serving_size_calc("cake", 12)
serving_size_calc("cake", 7)
serving_size_calc("cookie", 1)
serving_size_calc("cookie", 10)
# p serving_size_calc("THIS IS AN ERROR", 5)

=begin
#  Reflection
What did you learn about making code readable by working on this challenge?
  I learned that there might be better ways to do something even if the original way is perfectly
  readable. I didn't have much trouble following the original codes' lines 11 through 21 (the whole
  error-raising thing) but it didn't seem like the simplest way to get the job done.

Did you learn any new methods? What did you learn about them?
  The only method that we had to review in detail was values_at because we couldn't figure out why we 
  needed to specify an index...but we saw in the Ruby docs that it returns an array, so then it made sense.

What did you learn about accessing data in hashes? 
  It's handy to be able to access data either via the key or via the value. We did both in this.

What concepts were solidified when working through this challenge?
  Clarity is important and simpler-looking code may or may not be "better."

=end