# Analyze the Errors

# I worked on this challenge by myself.
# I spent [#] hours on this challenge. started at 2:38pm

# --- error -------------------------------------------------------

# "Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# => The error is in errors.rb

# 2. What is the line number where the error occurs?
# => The error says it's in line 170...which is the last line of the file. 

# 3. What is the type of error message?
# => It's a syntax error.

# 4. What additional information does the interpreter provide about this type of error?
# => It says it's expecting the keyword_end.

# 5. Where is the error in the code?
# => It's really in line 17 (well, it's NOT in line 17 and that's the error). The
# => error message is looking at the end of line 170. (Note to reader: line 170 was the last
# => line of the file when I started this exercise. After adding the answers to the questions
# => and my reflection, the last line is now at line...)

# 6. Why did the interpreter give you this error?
# => There should be another 'end' in the block in lines 13-16. Both 'def' and 'while' 
# => require explicit 'end' statements and there is only one there.

# --- error -------------------------------------------------------

# south_park

# 1. What is the line number where the error occurs?
# => line 42

# 2. What is the type of error message?
# => NameError

# 3. What additional information does the interpreter provide about this type of error?
# => undefined local variable or method `south_park' for main:Object

# 4. Where is the error in the code?
# => in <main>...the call for the variable or method

# 5. Why did the interpreter give you this error?
# => It's reading 'south_park' as a local variable or method but that variable or method
# => hasn't been defined anywhere.

# --- error -------------------------------------------------------

# cartman()

# 1. What is the line number where the error occurs?
# => line 63

# 2. What is the type of error message?
# => NoMethodError

# 3. What additional information does the interpreter provide about this type of error?
# => undefined method `cartman' for main:Object 

# 4. Where is the error in the code?
# => in <main>...the method

# 5. Why did the interpreter give you this error?
# => The parentheses after 'cartman' suggest to the interpreter that this is a method but
# => it can't find a method by this name that's been defined anywhere.

# --- error -------------------------------------------------------

# def cartmans_phrase
#   puts "I'm not fat; I'm big-boned!"
# end

# cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# => line 83

# 2. What is the type of error message?
# => ArgumentError

# 3. What additional information does the interpreter provide about this type of error?
# => wrong number of arguments (1 for 0)

# 4. Where is the error in the code?
# => in line 87

# 5. Why did the interpreter give you this error?
# => The method definition of 'cartmans_phrase' in line 83 does not include any formal parameters
# => When you call the method in line 87 with the argument 'I hate Kyle', it doesn't have anything 
# => to do with that string.

# --- error -------------------------------------------------------

# def cartman_says(offensive_message)
#   puts offensive_message
# end

# cartman_says

# 1. What is the line number where the error occurs?
# => line 108

# 2. What is the type of error message?
# => ArgumentError

# 3. What additional information does the interpreter provide about this type of error?
# =>  wrong number of arguments (0 for 1)

# 4. Where is the error in the code?
# => line 112

# 5. Why did the interpreter give you this error?
# => It's the opposite of the previous example. This method definition requires an argument
# => ('offensive_message') in line 108. But when you call the method in line 112, there's no
# => argument given.



# --- error -------------------------------------------------------

# def cartmans_lie(lie, name)
#   puts "#{lie}, #{name}!"
# end

# cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# => line 135

# 2. What is the type of error message?
# => ArgumentError

# 3. What additional information does the interpreter provide about this type of error?
# => wrong number of arguments (1 for 2)

# 4. Where is the error in the code?
# => line 139

# 5. Why did the interpreter give you this error?
# => It's expecting two arguments in the method call and receives only one.

# --- error -------------------------------------------------------

# 5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# => line 158

# 2. What is the type of error message?
# => TypeError

# 3. What additional information does the interpreter provide about this type of error?
# => String can't be coerced into Fixnum

# 4. Where is the error in the code?
# => in <main>...the method '*'

# 5. Why did the interpreter give you this error?
# => It can't figure out how to multiply 5 by a string. If the code were reversed ("'Respect
# => my authoritay' * 5 ") it would work fine. This has to do with the fact that '*' is a method and this
# => line of code is a method call, not strictly a multiplication operation. Method calls are not 
# => transitive. The thing to be multiplied HAS to go on the left and the number of times HAS to go on
# => the right.

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# => line 181

# 2. What is the type of error message?
# => ZeroDivisionError

# 3. What additional information does the interpreter provide about this type of error?
# => divided by 0

# 4. Where is the error in the code?
# => in the value assigned to the variable

# 5. Why did the interpreter give you this error?
# => The result of trying to divide a number by zero is undefined. That value can't be
# => given to a variable (apparently).

# --- error -------------------------------------------------------

# require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# => line 202

# 2. What is the type of error message?
# => LoadError

# 3. What additional information does the interpreter provide about this type of error?
# => cannot load such file -- /home/heather/phase-0-curriculum/phase-0/cartmans_essay.md

# 4. Where is the error in the code?
# => in <main> 

# 5. Why did the interpreter give you this error?
# => The interpreter is trying to link to a related file called 'cartmans_essay.md'
# => That file doesn't exist in this directory so it's unable to load it.


# --- REFLECTION -------------------------------------------------------
# Which error was the most difficult to read?
# I actually didn't have trouble with any of these. If I hadn't just read in Pine's book about
# methods and operators, I would have had the most trouble with the multiplication one. In my 
# brain, since about the third grade, " 5 * 'a thing' " is EXACTLY the same as " 'a thing' * 5 ".
# They just don't register as two different statements.

# How did you figure out what the issue with the error was?
# Luckily for me, I read about this a few days ago so it didn't get by me.

# Were you able to determine why each error message happened based on the code? 
# Yes, for the most part.

# When you encounter errors in your future code, what process will you follow to help you debug?
# This process seems very systematic. Getting the line numbers embedded in the error message and the 
# relatively informational error-type names, I feel like I'll have a decent place to start when I'm
# debugging. I imagine there are some errors I will get that will be very obvious and I might be
# able to skip a step or two but I may be over-optimistic about that. 