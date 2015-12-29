# I worked on this challenge with Jon Schwartz.


# Your Solution Below

def valid_triangle?(a, b, c)
  if a == 0 || b == 0 || c == 0
  	return false
  elsif ((a+b) < c) || ((b+c) < a) || ((a+c) < b)
  	return false
  elsif (a == b) && (a == c)
  	return true
  elsif (a == b) || (a == c) || (b ==c)
  	return true	
  elsif (a^a) * (b^b) ==  (c^c)
  	return true
   else
 	return true
  end
end

puts valid_triangle?(1, 1, 2.01)