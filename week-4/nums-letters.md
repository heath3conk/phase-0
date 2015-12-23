#Numbers, Letters & Variable Assignment

Here are the links to the exercises:
- [Defining Variables](https://github.com/heath3conk/phase-0/blob/master/week-4/defining-variables.rb)
- [Simple String Methods](https://github.com/heath3conk/phase-0/blob/master/week-4/simple-string.rb)
- [Local Variables & Basic Arithmetical Operations](https://github.com/heath3conk/phase-0/blob/master/week-4/basic-math.rb)

**What does *puts* do?**
**Puts** prints something (whatever it is your program tells it to print) to the console. Importantly, it doesn't *return* that information, which means that whatever it prints will not be available to use elsewhere unless you've saved it somehow. For example, you could calcualte and print the number of marbles in a bag but you may not be able to use that quantity to calculate the total weight of the bag of marbles becuase, once it's been printed, the total number of marbles is basically gone.

**What is an integer?** 
An **integer** is a whole number. It's a number expressed without any decimal point or fraction (in case you were thinking of fractions).


**What is a float?**
A **float** is a number expressed with a decimal point. Even if the only thing after the decimal is a zero (like 5.0), the number would still be interpreted as a float.


**What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?** 
Computers are literal and they will not equate one thing to another without prompting. You look at 2 and 2.0 and recognize that these two things are the same but the computer sees an integer and a float. Once it's primed to view a number in a certain way, any operations on that number (addition, multiplication, etc.) have to be treated the same way the original number is treated - either without a decimal, for an integer, or with a decimal, for a float. 

If you divide a float by another float, there's no problem if the division doesn't come out even. There's a decimal point! You can express the result nearly exactly. But only *nearly* exactly. Think about 4.0 divided by 3.0. The result could go on for a while (1.33333 etc.).

If you divde an integer by another integer and the result isn't exactly another integer, the computer can't just give you a float as the result. Unless you give it specific instructions otherwise, it *has* to give you another integer. So it does, rounding down to the nearest. In the previous example of 4 divided by 3, you would get 1.


**Here's my code to calculate the number of hours in a year**
'''
puts 24 * 365.25
'''

**and the number of minutes in a decade**
'''
puts 60 * 60 * 24 * 365.25 * 10
'''

**How does Ruby handle addition, subtraction, multiplication, and division of numbers?**
Ruby makes these things pretty simple. For the most part, I'm using the same operators I've always used when I use this keyboard with a calculator application. In other words, the multiplication and division operators are not the ones I learned in third grade, but I have used them before. Modulus was not an operator I'd used before I did any coding, so that's one to learn. 

In some ways, the fact that they're so familiar may end up being problematic, at least in the beginning. My calculator will convert from integer to float without my telling it to. Since the symbols are the same, I expect I may find an error in the middle of some complicated thing six months from now that is the result of failing to convert from an integer to a float...or maybe not, since I'm picturing that problem so clearly now!


**What is the difference between integers and floats?**
I kind of covered this above in the question about integer vs. float division but here it is again. **Integers** are whole numbers. They're expressed without decimals or fractions (I keep including fractions just to be really exact even though I don't know why you'd use fractions in coding when decimals are so handy). When I say without decimals, I mean exactly that. Even if the only digit to the right of a decimal is a zero (eg. 5.0), that would still mean that the number shown is *not* an integer....which would mean it's a **float.** Any number expressed with a decimal is a float.

It was interesting to read in Pine's book that even financial applications use integers rather than floats, counting the pennies rather than dollars. I imagine this is because floats take up more memory so manipulating them or even saving them takes up more resources? No wonder they switched stock prices from eighths-of-a-dollar to pennies!


**What is the difference between integer and float division?**
...um, I answered this one above...


**What are strings? Why and when would you use them?**
Strings are blocks of characters that are treated as, well, blocks. You can form a string out of any characters, including numbers, spaces, punctuation, etc. If you want to collect data from a user, like name, address, etc. you would most likely want to gather that information as a string. You can then save their entire street address as a single object rather than a street number, a street name, a description like "Street" or "Avenue". Here in Chicago, you'd also need to ask a direction, since many streets have both a North and South or an East and West and some street numbers might appear on both. That's a lot of different fields of data to get and store. If you just ask for "address," you'd get all of it and could keep it all in one place.

Happily, you could also then parse it out into whatever sub-sets of data you wanted. You can break strings up into their constituent characters and manipulate those any way you like, saving them as elements in an array, reversing them, etc. 

It seems to me, since there are a bunch of methods that can be called on strings, one of the benefits of using strings is to access those methods. I haven't used many of them yet so this might be kind of a circular argument.


**What are local variables? Why and when would you use them?**
Local variables are ones you create within your method for use in that method. Using local variables enables you to store information from one operation and use it elsewhere. The *local* part of local variables means that you can't use those variables outside of their home method. 


**How was this challenge? Did you get a good review of some of the basics?**
This challenge was fun! I took that Ruby tutorial at least six months ago so it has been great to review these things. I found Chris Pine's book very easy to follow and his set-up, with short chapters and the conversational (if sometimes goofy) tone, kept things moving quickly.