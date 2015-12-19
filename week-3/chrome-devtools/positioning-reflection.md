#Positioning Reflection

Here are the screenshots of the exercises:
- *[Exercise 1](imgs/exercise1.png)*
- *[Exercise 2](imgs/exercise2.png)*
- *[Exercise 3](imgs/exercise3.png)*
- *[Exercise 4](imgs/exercise4.png)*
- *[Exercise 5](imgs/exercise5.png)*
- *[Exercise 6](imgs/exercise6.png)*
- *[Exercise 7](imgs/exercise7.png)*
- *[Exercise 8](imgs/exercise8.png)*
- *[Exercise 9](imgs/exercise9.png)*

**How can you use Chrome's DevTools inspector to help you format or position elements?**
You can play around with the styling in real time without having to save your Sublime file and refresh the webpage. We used the "style" section at the bottom of the page, rather than changing the CSS directly in the Sources tab. The Style section allowed us to check or uncheck boxes to have the CSS apply (or not) to the elements. Adding and changing styles there felt a little more cumbersome than doing the same thing on the Sources tab, which acts more like a text editor, but it gave us (a) a list of auto-complete options for both properties and values and (b) the ability to toggle specific attributes on or off quickly.

**How can you resize elements on the DOM using CSS?**
You can set height and width, using either pixels or a percentage of the page. 


**What are the differences between absolute, fixed, static, and relative positioning? Which did you find easiest to use? Which was most difficult?**
- *Static positioning* is the default, it places the element into the flow of the page under the previous element. Static doesn't take into account any width values so, even if two items could sit side-by-side, they won't if they're both either explicitly or implicitly static.
- *Absolute positioning* places the element where it would go in relation to its nearest parent element that has any positioning specified other than the default static positioning. If none of its parents are explicitly positioned, this element is positioned in relation to the <html> element.
- *Relative positioning* puts the element in the flow of the page at a specific location compared to where it would have gone if it had the static positioning (ie. without any position specified). So if static positioning would put element A 10px below element B, you can move element A further down the page by giving it a top margin of 10px. 
- *Fixed positioning* places the element in a particular spot in the browser window and pegs it to that spot even as the user scrolls up or down. The most annoying ads on websites apparently *love* fixed positioning. 


**What are the differences between margin, border, and padding?**
Every element is basically a box. The edge of the box is its border. Inside the box, cushioning its contents is the padding. Outside the box, separating it from other boxes, is the margin. It's easiest to see these values if you create a couple of elements and give them various padding, border and margin values. In this challenge, I played around with the styles for div 2, giving it padding of 20px (which moved the text "Div 2") 20px down and to the right of the upper left corner and then gave it a border. Exercise 4 had us using margins to get the proper spacing between the four boxes when we put them all on one line.

**What was your impression of this challenge overall? (love, hate, and why?)**
This challenge was pretty fun overall. My biggest issue at the moment is reconciling the meanings of the words "absolute" and "relative" when it comes to positioning values. In my mind, they're both kind of relative, one to a parent element (absolute) and the other to its innate position (relative). After my pair and I finished this challenge and before I wrote this reflection, I spent some time fooling around with this. I can't say I'm totally comfortable with it yet but I'm getting there.