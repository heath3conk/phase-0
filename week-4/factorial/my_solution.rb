# Factorial

# I worked on this challenge with: Coline Forde.

#Pseudocode: 
# 1. method will take in one positive number
# 2. within the method we'll have a start product equal to one, and a counter
# 3. while the counter is equal to the number, multiply the product by the counter
# 4. Once the counter is one less than the number, we return the product. 


# Your Solution Below
def factorial(number)
  product = 1
  counter = 1

while counter <= number
  		product *= counter
  		counter += 1
end

return product

end


puts factorial(4)