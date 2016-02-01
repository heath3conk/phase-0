# Reverse Words


# I worked on this challenge by myself.
# This challenge took me [#] hours.

# Pseudocode
# Input: a word or a bunch of words, separated by spaces
# Output: the words in the same order with their letters reversed
# Steps: 
# => if there is only one word, return it in reverse order
# => if there is more than one word, break them into their individual
# =>    words and store them as separate items
# =>    reverse each of the individual words
# =>    return then, rejoined into a single unit


# Initial Solution
# def reverse_words(words)
# 	if !words.include?(' ')
# 		return words.reverse
# 	else
# 		word_list = words.split
# 		for word in word_list
# 			word.reverse!
# 		end
# 		return word_list.join(' ')
# 	end
# end

# Refactored Solution
def reverse_words(words)
  words = words.split
  words.map! { |word| word.reverse! } # tried chaining the split and map! functions
  return words.join(' ')			  # but Ruby didn't like it with one-word input
end

puts reverse_words('yo')
puts reverse_words('how YOU doin?')



# Reflection
# I attempted the fibonacci challenge but got stuck on it after a couple of hours of 
# banging my head against the wall. Got this one done relatively quickly (after a 
# good night's sleep too!) but I'm keeping my work so far on fibonacci so I can nail
# it in week 9. Still like Ruby! It was not as hard switching from JavaScript as I 
# had thought it might be.